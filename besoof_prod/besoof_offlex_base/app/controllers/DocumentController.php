<?php
use offlex\repositories\DocumentRepository;
use offlex\repositories\InvoiceRepository;
use offlex\repositories\AccountRepository;
use offlex\mailers\ContactMailer;

class DocumentController extends \BaseController
{
	public function __construct(DocumentRepository $documentRepo)
	{
		parent::__construct();
	
		$this->documentRepo = $documentRepo;
	}
    
    public function getDatatable()
    {
    	$accountId = Auth::user()->account_id;
    	$search = $this->documentRepo->find(Input::get('sSearch'), ENTITY_DOCUMENT);
    	
    	return $this->documentRepo->getDatatable($accountId, $search);
    }
    
	public function index()
	{
		
		return View::make('list', array(
				'entityType' => ENTITY_DOCUMENT,
				'title' => trans('texts.documents'),
				'columns' => Utils::trans(['checkbox', 'name', 'description', 'date_created', 'action']),
				'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
		)
		);
	}
	
    public function create($clientPublicId = 0, $invoicePublicId = 0, $documentPublicId = 0, $categoryPublicId = 0)
    {
        $data = array(
            'clientPublicId' => Input::old('client') ? Input::old('client') : $clientPublicId,
            'invoicePublicId' => Input::old('invoice') ? Input::old('invoice') : $invoicePublicId,
        	'documentPublicId' => Input::old('document') ? Input::old('document') : $documentPublicId,
        	'categoryPublicId' => Input::old('category') ? Input::old('category') : $categoryPublicId,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)
                            ->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'document' => null,
            'method' => 'POST',
            'url' => "documents",
            'title' => trans('texts.new_document'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
        	'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), );

        return View::make('documents.edit', $data);
        
    }

    public function edit($publicId)
    {
        $document = Document::scope($publicId)->firstOrFail();
        $document->document_date = Utils::fromSqlDate($document->document_date);
        
        $data = array(
            'client' => null,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'document' => $document,
            'method' => 'PUT',
            'url' => 'documents/'.$publicId,
            'title' => trans('texts.edit_document'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
            'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), 
        );
        
        return View::make('documents.edit', $data);
    }
    public function getDocument($publicId){
        $document = Document::scope($publicId)->firstOrFail();
        if (\Auth::check())
        {
            try
            {
                $path = $document->path .'/'. $document->file_name;
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

    public function deleteDocument($publicId){

        $document = Document::scope($publicId)->firstOrFail();
        if (\Auth::check())
        {
            try
            {
                $path = $document->path .'/'. $document->file_name;
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
    	$document = Document::withTrashed()->scope($publicId)->firstOrFail();
    	$document->document_date = Utils::fromSqlDate($document->document_date);
    	
    	$data = array(
    	    'client' => null,
            'invoice' => null,
            'invoices' => Invoice::scope()->where('is_recurring', '=', false)->where('is_quote', '=', false)->with('client', 'invoice_status')->orderBy('invoice_number')->get(),
            'document' => $document,
            'method' => 'PUT',
            'url' => 'documents/'.$publicId,
            'title' => trans('texts.edit_document'),
            'detailPage' => true,
        	'categories' => Category::scope()->orderBy('id')->get(array('id','name', 'description', 'public_id')),
            'products' => Product::scope()->orderBy('id')->get(array('id','product_key', 'notes', 'cost', 'qty','public_id')),
            'clients' => Client::scope()->with('contacts')->orderBy('name')->get(), 
    	);
    	
    	return View::make('documents.edit', $data);
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
    	if (!$publicId && $errors = $this->documentRepo->getErrors(Input::all())) {
    		$url = $publicId ? 'documents/'.$publicId.'/edit' : 'documents/create';
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
    				$file_prefix = "document";
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
    				$destinationPath = storage_path() .'/uploads/documents/'.$year . '/' . $projectKey;
    			}else{
    				$destinationPath = storage_path() .'/uploads/documents'.$year . '/';
    			}
    			$filename = $file_prefix . '_' . $mytime->format('d-m-Y-H_i_s') . '.' . $file->getClientOriginalExtension();
    			$file->move($destinationPath, $filename);
            }
            
            $this->documentRepo->save($publicId, Input::all(), $destinationPath, $filename);
    		
            return Redirect::to('documents');
    	}
    }

    public function bulk()
    {
        $action = Input::get('action');
        $ids = Input::get('id') ? Input::get('id') : Input::get('ids');
        $count = $this->documentRepo->bulk($ids, $action);

        if ($count > 0) {
            $message = Utils::pluralize($action.'d_document', $count);
            Session::flash('message', $message);
        }

        return Redirect::to('documents');
    }
    
    public function archive($publicId)
    {
    	$document = Document::scope($publicId)->firstOrFail();
    	$document->delete();
    
    	Session::flash('message', trans('texts.archived_document'));
    
    	return Redirect::to('documents');
    }

    public function removeFile($publicId)
    {
        $this->deleteDocument($publicId);
    	$document = Document::scope($publicId)->firstOrFail();
    	
    	//remove from table
    	$document->path = '';
    	$document->file_name = '';
    	$document->save();
    	
    	return Redirect::to('documents/'. $publicId . '/edit');
    }
}
