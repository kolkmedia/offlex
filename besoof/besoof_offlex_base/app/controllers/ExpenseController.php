<?php
use offlex\repositories\ExpenseRepository;
use offlex\repositories\InvoiceRepository;
use offlex\repositories\AccountRepository;
use offlex\repositories\TaxRepository;
use offlex\mailers\ContactMailer;

class ExpenseController extends \BaseController
{
	public function __construct(ExpenseRepository $expenseRepo)
	{
		parent::__construct();
	
		$this->expenseRepo = $expenseRepo;
	}
    
    public function getDatatable()
    {
    	$accountId = Auth::user()->account_id;
    	$search = $this->expenseRepo->find(Input::get('sSearch'), ENTITY_EXPENSE);
    	
    	return $this->expenseRepo->getDatatable($accountId, $search);
    }
    
	public function index()
	{

		return View::make('list_controls', array(
				'entityType' => ENTITY_EXPENSE,
				'title' => trans('texts.expenses'),
				'columns' => Utils::trans(['checkbox', 'name', 'description', 'amount', 'date_created', 'action']),
				'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
				'quarters' => Quarter::scope()->orderBy('id')->get(array('id','name', 'description','quarter_date_start','quarter_date_end', 'public_id')),
				'listControlPage' => true,
				'typeOfList' => array('expense','category','quarters', 'expense_year','invoice_date','invoice_status'),
		)
		);
	}
	
    public function create($clientPublicId = 0, $invoicePublicId = 0, $expensePublicId = 0, $categoryPublicId = 0)
    {
        $data = array(
            'clientPublicId' => Input::old('client') ? Input::old('client') : $clientPublicId,
            'invoicePublicId' => Input::old('invoice') ? Input::old('invoice') : $invoicePublicId,
        	'expensePublicId' => Input::old('expense') ? Input::old('expense') : $expensePublicId,
        	'categoryPublicId' => Input::old('category') ? Input::old('category') : $categoryPublicId,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)
                            ->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'expense' => null,
            'method' => 'POST',
            'url' => "expenses",
            'title' => trans('texts.new_expense'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
        	'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), );

        return View::make('expenses.edit', $data);
        
    }

    public function edit($publicId)
    {
        $expense = Expense::scope($publicId)->firstOrFail();
        $expense->expense_date = Utils::fromSqlDate($expense->expense_date);
        
        $data = array(
            'client' => null,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'expense' => $expense,
            'method' => 'PUT',
            'url' => 'expenses/'.$publicId,
            'title' => trans('texts.edit_expense'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
            'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), 
        );

        //$this->expenseRepo->getImage($expense->path, $expense->file_name);

        return View::make('expenses.edit', $data);
    }

    public function getFile($publicId){
        $expense = Expense::scope($publicId)->firstOrFail();
        if (\Auth::check())
        {
            try
            {
                $path = $expense->path .'/'. $expense->file_name;
                $file = new Symfony\Component\HttpFoundation\File\File($path);
                $mime = $file->getMimeType();
                $response = Response::make($file, 200);
                $response->header('Content-Type', $mime);
                return Response::download($file);
            }
            catch (Illuminate\Filesystem\FileNotFoundException $exception)
            {
                die("The file doesn't exist");
            }
        }
        return null;
    }

    public function deleteFile($publicId){
        $expense = Expense::scope($publicId)->firstOrFail();
        if (\Auth::check())
        {
            try
            {
                $path = $expense->path .'/'. $expense->file_name;
                $file = new Symfony\Component\HttpFoundation\File\File($path);
                return File::delete($file);
            }
            catch (Illuminate\Filesystem\FileNotFoundException $exception)
            {
                die("The file doesn't exist");
            }
        }

        return null;
    }
    public function show($publicId)
    {
    	$expense = Expense::withTrashed()->scope($publicId)->firstOrFail();
    	$expense->expense_date = Utils::fromSqlDate($expense->expense_date);
    	
    	$data = array(
    	    'client' => null,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'expense' => $expense,
            'method' => 'PUT',
            'url' => 'expenses/'.$publicId,
            'title' => trans('texts.edit_expense'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
            'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), 
    	);

    	return View::make('expenses.edit', $data);
    }
    
    public function store()
    {
    	return $this->save();
    }

    public function update($publicId)
    {
    	return $this->save($publicId);
    }

    private function save($publicId = false)
    {
    	if (!$publicId && $errors = $this->expenseRepo->getErrors(Input::all())) {
    		$url = $publicId ? 'expenses/'.$publicId.'/edit' : 'expenses/create';
    		return Redirect::to($url)
    		->withErrors($errors)
    		->withInput();
    	} else {
    		$destinationPath = '';
    		$filename = '';
    	if ($file = Input::file('receipt')) {
				$file_prefix = "";
    			if(Input::get('name') != ""){
    				$file_prefix = Input::get('name');
    			}else{
    				$file_prefix = "expense";
    			}
    			$projectId = 0;
    			$projectId = Input::get('product_id');
    			$project = Product::where('id','=',$projectId)->get(array('product_key'));
    			$projectKey = "";

    			foreach($project as $project_key) {
    				$projectKey = utf8_decode($project_key->product_key);
    			}

    			$mytime = Carbon\Carbon::now();
    			$year = $mytime->format('Y');

    			if ($project != ''){
    				$destinationPath = storage_path() .'/uploads/expenses/'.$year . '/' . $projectKey;
    			}else{
    				$destinationPath = storage_path() . '/uploads/expenses'.$year . '/';
    			}


    			$filename = $file_prefix . '_' . $mytime->format('d-m-Y-H_i_s') . '.' . $file->getClientOriginalExtension();
    			$file->move($destinationPath, $filename);
            }
            
            $this->expenseRepo->save($publicId, Input::all(), $destinationPath, $filename);
    		
            return Redirect::to('expenses');
    	}
    }

    public function bulk()
    {
        $action = Input::get('action');
        $ids = Input::get('id') ? Input::get('id') : Input::get('ids');
        $count = $this->expenseRepo->bulk($ids, $action);

        if ($count > 0) {
            $message = Utils::pluralize($action.'d_expense', $count);
            Session::flash('message', $message);
        }

        return Redirect::to('expenses');
    }
    
    public function archive($publicId)
    {
    	$expense = Expense::scope($publicId)->firstOrFail();
    	$expense->delete();
    
    	Session::flash('message', trans('texts.archived_expense'));
    
    	return Redirect::to('expenses');
    }

    public function removeFile($publicId)
    {
        $this->deleteFile($publicId);
    	$expense = Expense::scope($publicId)->firstOrFail();
    	
    	//remove from table
    	$expense->path = '';
    	$expense->file_name = '';
    	$expense->save();
    	
    	return Redirect::to('expenses/'. $publicId . '/edit');
    }
}
