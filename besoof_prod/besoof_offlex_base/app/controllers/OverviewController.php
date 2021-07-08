<?php
use offlex\repositories\OverviewRepository;
use offlex\repositories\InvoiceRepository;
use offlex\repositories\AccountRepository;
use offlex\mailers\ContactMailer;
use offlex\repositories\ExpenseRepository;

class OverviewController extends \BaseController
{
	public function __construct(OverviewRepository $overviewRepo, InvoiceRepository $invoiceRepo, ExpenseRepository $expenseRepo)
	{
		parent::__construct();
	
		$this->overviewRepo = $overviewRepo;
		$this->invoiceRepo = $invoiceRepo;
		$this->expenseRepo = $expenseRepo;
	}
	public function getDatatable($entityType = ENTITY_OVERVIEW, $accountId = null)
	{
		if (Session::get("setview:{$entityType}")){
			$value =Session::get("view:{$entityType}");
			$accountId = Auth::user()->account_id;
			if($value == 1){
				return $this->getInvoiceDatatable();
			}elseif($value == 2){
				return $this->getExpenseDatatable();
			}else{
				//anders facturen
				return $this->getInvoiceDatatable();
			}
		}else{
			//anders facturen
			return $this->getInvoiceDatatable();
		}
	}
    public function getInvoiceDatatable($clientPublicId = null)
    {
       	$accountId = Auth::user()->account_id;
       	$search = Input::get('sSearch');

       return $this->invoiceRepo->getDatatable($accountId, $clientPublicId, ENTITY_INVOICE, $search, ENTITY_OVERVIEW);
    }
    
    public function getExpenseDatatable($clientPublicId = null)
    {
    	$accountId = Auth::user()->account_id;
    	$search = $this->expenseRepo->find(Input::get('sSearch'), ENTITY_OVERVIEW);
    	 
    	return $this->expenseRepo->getDatatable($accountId, $search,ENTITY_OVERVIEW);
    }
    
	public function index($entityType = ENTITY_OVERVIEW)
	{
		$columns = "";
		
		if (Session::get("setview:{$entityType}")){
			$value =Session::get("view:{$entityType}");
			if($value == 1){
				$columns =  Utils::trans(['invoice_number', 'client', 'invoice_date', 'invoice_total', 'balance_due', 'due_date', 'status']);
			}elseif($value == 2){
				$columns =  Utils::trans(['name', 'description', 'amount', 'date_created']);
			}else{
				$columns =  Utils::trans(['invoice_number', 'client', 'invoice_date', 'invoice_total', 'balance_due', 'due_date', 'status']);
			}
		}else{
			$columns =  Utils::trans(['invoice_number', 'client', 'invoice_date', 'invoice_total', 'balance_due', 'due_date', 'status']);
		}
		
		return View::make('list_controls', array(
				'entityType' => ENTITY_OVERVIEW,
				'title' => trans('texts.overview'),
				
				'columns' =>$columns,
				
				'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
				'quarters' => Quarter::scope()->orderBy('id')->get(array('id','name', 'description','quarter_date_start','quarter_date_end', 'public_id')),
				
				'clients' => Client::scope()->with('contacts')->orderBy('name')->get(),
				
				'listControlPage' => true,
				'typeOfList' => array('overview','expense','clients','invoice','category','quarters', 'expense_year','invoice_date','invoice_status'),
		));
		
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
        
        return View::make('expenses.edit', $data);
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
    				$destinationPath = 'uploads/expenses/'.$year . '/' . $projectKey;
    			}else{
    				$destinationPath = 'uploads/expenses'.$year . '/';
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
    	
    	$expense = Expense::scope($publicId)->firstOrFail();
    	
    	//remove from table
    	$expense->path = '';
    	$expense->file_name = '';
    	$expense->save();
    	
    	return Redirect::to('expenses/'. $publicId . '/edit');
    }
}
