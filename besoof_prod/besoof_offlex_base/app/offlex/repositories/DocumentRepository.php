<?php namespace offlex\repositories;

use Log;
use Document;
use Credit;
use Invoice;
use Client;
use Utils;
use Account;
use Product;
use Category;

class DocumentRepository
{
    public function find($filter = null, $entityType = null)
    {
    	$query = \DB::table('documents')
    	->where('documents.account_id', '=', \Auth::user()->account_id)
    	->select('documents.public_id', 'documents.name', 'documents.description', 'documents.deleted_at', 'documents.document_date', 'documents.is_deleted');
    	
    	if (!\Session::get('show_trash:' .$entityType)) {
    		$query->where('documents.deleted_at', '=', null);
    	}
    	
    	if (\Session::get('show_filter:' .$entityType)) {
    		
    		$field = \Session::get('filter_field:' .$entityType);
    		$operator = \Session::get('filter_operator:' .$entityType);
    		$value = \Session::get('filter_value:' .$entityType);
    		if ($operator == 'like'){
    			$query->where('documents.' . $field ,$operator, '%' . $value . '%');
    		}elseif ($operator == 'date'){
    			$query->where(\DB::raw('YEAR(' . $field .')'), '=', $value);
    		}
    		else{
    			$query->where('documents.' . $field ,$operator, $value);
    		}
    	}
    	
    	if (\Session::get('filter_category:' .$entityType)) {
    		$value = \Session::get('filter_category_value:' .$entityType);
    		$query->where('documents.category_id','=', $value);
    	}   

    	if (\Session::get('filter_quarter:' .$entityType)) {
    		
    		//GET QUARTER DATE START TO END
    		$table = 'quarters';
    		$value = \Session::get('filter_quarter_value:' .$entityType);
    		
    		$results = \DB::table($table)->where('id', '=', $value)->get(['*']);
    		
    		$start_date = "";
    		$end_date = "";
    		
    		foreach ($results as $record){
    			$start_date = $record->quarter_date_start;
    			$end_date = $record->quarter_date_end;
    		}
    		
    		$query->whereBetween('documents.document_date', array($start_date, $end_date))->get();
    		
    	}
 
    	if (\Session::get('filter_year:' .$entityType)) {
    		$value = \Session::get('filter_year_value:' .$entityType);
    		$query->where(\DB::raw('YEAR(documents.document_date)'), '=', $value);
    	}    	
    	
    	
    	if (\Session::get('show_query:' .$entityType)) {
    		
    		$table = \Session::get('filter_query_table:' .$entityType);
    		$value = \Session::get('filter_query_value:' .$entityType);
    		
    		//get start and end date
    		$results = \DB::table($table)->where('id', '=', $value)->get(['*']);
    		
    		$start_date = "";
    		$end_date = "";
    		
    		foreach ($results as $record){
    			$start_date = $record->quarter_date_start;
    			$end_date = $record->quarter_date_end;
    		}
    		
    		$query->whereBetween('documents.document_date', array($start_date, $end_date))->get();
    	}
    	
    	if ($filter) {
    		$query->where(function ($query) use ($filter) {
    			$query->where('documents.name', 'like', '%'.$filter.'%')
    			->orWhere('documents.description', 'like', '%'.$filter.'%');
    		});
    	}
    
    	return $query;
    }
    public function getOverviewDatatable($accountId, $search)
    {
    
    	$documents = $search;
    	 
    	$table = \Datatable::query($documents);
    
    	 
    	$table->addColumn('name', function ($model) { return link_to('documents/'.$model->public_id.'/edit', $model->name); });
    	$table->addColumn('description', function ($model) { return link_to('documents/'.$model->public_id, $model->description); });
    	$table->addColumn('amount', function ($model) { return Utils::formatMoney($model->amount); });
    	$table->addColumn('document_date', function ($model) { return Utils::timestampToDateString(strtotime($model->document_date)); });
    	 
    	return $table->addColumn('document_date', function ($model) { return Utils::timestampToDateString(strtotime($model->document_date)); })
    
    	->make();
    }
    public function getDatatable($accountId, $search, $entityType = null)
    {
    	$documents = $search;
    	$table = \Datatable::query($documents);
    	
    	if($entityType != ENTITY_OVERVIEW){
    		$table->addColumn('checkbox', function ($model) { return '<div class="checkbox table-checkbox"><input type="checkbox" name="ids[]" value="'.$model->public_id.'" '.Utils::getEntityRowClass($model).'><label for="ids[]"></label></label></div>'; });
    	}
    	
    	$table->addColumn('name', function ($model) { return link_to('documents/'.$model->public_id.'/edit', $model->name); });
    	$table->addColumn('description', function ($model) { return link_to('documents/'.$model->public_id, $model->description); });
    	$table->addColumn('document_date', function ($model) { return Utils::timestampToDateString(strtotime($model->document_date)); });
    	
    	return $table->addColumn('dropdown', function ($model) use ($entityType){
    		if ($model->is_deleted) {
    			return '<div style="height:38px"/>';
    		}
    
    		//GEEN BEWERKINGSACTIES IN OVERVIEW
    		if($entityType != ENTITY_OVERVIEW){
    		$str = '<div class="btn-group tr-action" style="visibility:hidden;">
  							<button type="button" class="btn btn-xs btn-info dropdown-toggle" data-toggle="dropdown">
    							'.trans('texts.select').' <span class="caret"></span>
  							</button>
  							<ul class="dropdown-menu" role="menu">';
    
    		if (!$model->deleted_at || $model->deleted_at == '0000-00-00') {
    			$str .= '<li><a href="'.\URL::to('documents/'.$model->public_id.'/edit').'">'.trans('texts.edit_document').'</a></li>
						    <li class="divider"></li>
						    <li><a href="'.\URL::to('documents/create/'.$model->public_id).'">'.trans('texts.new_document').'</a></li>
						    <li class="divider"></li>
						    <li><a href="javascript:archiveEntity('.$model->public_id.')">'.trans('texts.archive_document').'</a></li>';
    		} else {
    			$str .= '<li><a href="javascript:restoreEntity('.$model->public_id.')">'.trans('texts.restore_document').'</a></li>';
    		}
    		return $str.'<li><a href="javascript:deleteEntity('.$model->public_id.')">'.trans('texts.delete_document').'</a></li></ul>
							</div>';
    		}
    	})
    	->make();
    }
    
    public function getErrors($input)
    {
        $rules = array(
            'name' => 'required',
        );

        $validator = \Validator::make($input, $rules);

        if ($validator->fails()) {
            return $validator;
        }

        return false;
    }

    public function save($publicId, $input, $path, $filename)
    {
        if ($publicId) {
            $document = Document::scope($publicId)->firstOrFail();
        } else {
            $document = Document::createNew();
        }

        $document->document_date = Utils::toSqlDate($input['document_date']);

        $categoryId = Product::getPrivateId($input['category_id']);
        $document->name = trim($input['name']);
        $document->description = trim($input['description']);
            
        if ($filename != '' ){
           	$document->path=$path;
           	$document->file_name=$filename;
        }
            
        $document->category_id = $categoryId;


        $document->save();

        return $document;
    }
    
    public function bulk($ids, $action)
    {
        if (!$ids) {
            return 0;
        }

        $documents = Document::withTrashed()->scope($ids)->get();

        foreach ($documents as $document) {
            if ($action == 'restore') {
                $document->restore();
            } else {
                if ($action == 'delete') {
                    $document->is_deleted = true;
                    $document->save();
                }

                $document->delete();
            }
        }

        return count($documents);
    }
}
