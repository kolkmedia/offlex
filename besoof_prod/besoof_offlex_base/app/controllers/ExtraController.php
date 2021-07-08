<?php

use offlex\repositories\ExtraRepository;

class ExtraController extends \BaseController {
	public function __construct(ExtraRepository $extraRepo)
	{
		parent::__construct();
	
		$this->extraRepo = $extraRepo;
	}
	
	//CATEGORIEN DATATABLE
	public function getDatatableCategories()
	{
		
		$query = DB::table('categories')
		->where('categories.account_id', '=', Auth::user()->account_id)
		->where('categories.deleted_at', '=', null)
		->select('categories.public_id', 'categories.name', 'categories.description', 'categories.created_at');
	
		return Datatable::query($query)
		->addColumn('name', function ($model) { return link_to('categories/'.$model->public_id.'/edit', $model->name); })
		->addColumn('description', function ($model) { return nl2br(Str::limit($model->description, 100)); })
		->addColumn('created_at', function ($model) { return Utils::timestampToDateString(strtotime($model->created_at)); })
		->addColumn('dropdown', function ($model) {
			return '<div class="btn-group tr-action" style="visibility:hidden;">
            <button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
              '.trans('texts.select').' <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
            <li><a href="'.URL::to('categories/'.$model->public_id).'/edit">'.uctrans('texts.edit_category').'</a></li>
          </ul>
        </div>';
		})
		->orderColumns(['name'])
		->make();
	}
	//QUARTERS DATATABLE
	public function getDatatableQuarters()
	{
	
		$query = DB::table('quarters')
		->where('quarters.account_id', '=', Auth::user()->account_id)
		->where('quarters.deleted_at', '=', null)
		->select('quarters.public_id', 'quarters.name', 'quarters.quarter_date_start', 'quarters.quarter_date_end');
	
		return Datatable::query($query)
		->addColumn('name', function ($model) { return link_to('quarters/'.$model->public_id.'/edit', $model->name); })
		->addColumn('quarter_date_start', function ($model) { return Utils::timestampToDateString(strtotime($model->quarter_date_start)); })
		->addColumn('quarter_date_end', function ($model) { return Utils::timestampToDateString(strtotime($model->quarter_date_end)); })
		->addColumn('dropdown', function ($model) {
			return '<div class="btn-group tr-action" style="visibility:hidden;">
            <button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
              '.trans('texts.select').' <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
            <li><a href="'.URL::to('quarters/'.$model->public_id).'/edit">'.uctrans('texts.edit_quarter').'</a></li>
          </ul>
        </div>';
		})
		->orderColumns(['name'])
		->make();
	}
	public function showSection($section = EXTRA_SETTINGS, $subSection = false)
	{
		if ($section == EXTRA_CATEGORIES) {
			$data = [
				'account' => Auth::user()->account,'settingsPage' => true,
			];
			return View::make('extra.categories', $data);
		} elseif ($section == EXTRA_QUARTERS) {
				$data = [
						'account' => Auth::user()->account,'settingsPage' => true,
				];
				return View::make('extra.quarters', $data);
		} elseif ($section == EXTRA_YEARS) {
			
		}
		
	}

	public function doSection($section = EXTRA_SETTINGS, $subSection = false)
	{
		if ($section == EXTRA_CATEGORIES) {
			return ExtraController::saveCategory();
		} elseif ($section == TAX_QUARTERS) {
			return ExtraController::saveQuarter();
		} elseif ($section == TAX_YEARS) {
			return ExtraController::saveYear();
		}
		
	}
	
	private function saveCategory($publicId = false)
	{
		
		if ($publicId) {
			$category = Category::scope($publicId)->firstOrFail();
		} else {
			$category = Category::createNew();
		}
		
		$category->name = trim(Input::get('name'));
		$category->description = trim(Input::get('description'));
		$category->save();
		
		$message = $publicId ? trans('texts.updated_category') : trans('texts.created_category');
		Session::flash('message', $message);
		
		return Redirect::to('extra/categories');
		
	}
	private function saveQuarter($publicId = false)
	{
		if ($publicId) {
			$quarter = Quarter::scope($publicId)->firstOrFail();
		} else {
			$quarter = Quarter::createNew();
		}
	
		$quarter->name = trim(Input::get('name'));
		$quarter->description = trim(Input::get('description'));
		$quarter->quarter_date_start=Utils::toSqlDate(Input::get('quarter_date_start'));
		$quarter->quarter_date_end=Utils::toSqlDate(Input::get('quarter_date_end'));
		
		
		$quarter->save();
	
		$message = $publicId ? trans('texts.updated_quarter') : trans('texts.created_quarter');
		Session::flash('message', $message);
	
		return Redirect::to('extra/quarters');
	
	}	
	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}
	public function editCategory($publicId)
	{
		$data = [
				'showBreadcrumbs' => false,
				'category' => Category::scope($publicId)->firstOrFail(),
				'method' => 'PUT',
				'url' => 'categories/'.$publicId,
				'title' => trans('texts.edit_category'),'settingsPage' => true,
		];
	
		return View::make('extra.category', $data);
	}
	public function createCategory()
	{
		$data = [
				'showBreadcrumbs' => false,
				'category' => null,
				'method' => 'POST',
				'url' => 'extra/categories',
				'title' => trans('texts.create_category'),'settingsPage' => true,
		];
	
		return View::make('extra.category', $data);
	}
	public function archiveCategory($publicId)
	{
		$product = Category::scope($publicId)->firstOrFail();
		$product->delete();
	
		Session::flash('message', trans('texts.archived_category'));
	
		return Redirect::to('extra/categories');
	}
	
	//QUARTERS
	public function editQuarter($publicId)
	{
		$quarter = Quarter::scope($publicId)->firstOrFail();
		$quarter->quarter_date_start = Utils::fromSqlDate($quarter->quarter_date_start);
		$quarter->quarter_date_end = Utils::fromSqlDate($quarter->quarter_date_end);
		
		$data = [
				'showBreadcrumbs' => false,
				'quarter' => $quarter,
				'method' => 'PUT',
				'url' => 'quarters/'.$publicId,
				'title' => trans('texts.edit_quarter'),'settingsPage' => true,
		];
	
		return View::make('extra.quarter', $data);
	}
	public function createQuarter()
	{
		$data = [
				'showBreadcrumbs' => false,
				'quarter' => null,
				'method' => 'POST',
				'url' => 'extra/quarters',
				'title' => trans('texts.create_quarter'),'settingsPage' => true,
		];
	
		return View::make('extra.quarter', $data);
	}
	public function archiveQuarter($publicId)
	{
		$product = Quarter::scope($publicId)->firstOrFail();
		$product->delete();
	
		Session::flash('message', trans('texts.archived_quarter'));
	
		return Redirect::to('extra/quarters');
	}	
	
	
	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}
	public function updateCategory($publicId)
	{
		return $this->saveCategory($publicId);
	}
	public function updateQuarter($publicId)
	{
		return $this->saveQuarter($publicId);
	}	

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
