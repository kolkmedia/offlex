<?php namespace offlex\repositories;

use Log;
use Expense;
use Credit;
use Invoice;
use Client;
use Utils;
use Account;
use Product;
use Category;

class ExpenseRepository
{
    public function find($filter = null, $entityType = null)
    {
    	$query = \DB::table('expenses')
    	->where('expenses.account_id', '=', \Auth::user()->account_id)
    	->select('expenses.public_id', 'expenses.name', 'expenses.description', 'expenses.amount', 'expenses.deleted_at', 'expenses.expense_date', 'expenses.is_deleted');
    	
    	if (!\Session::get('show_trash:' .$entityType)) {
    		$query->where('expenses.deleted_at', '=', null);
    	}
    	
    	if (\Session::get('show_filter:' .$entityType)) {
    		
    		$field = \Session::get('filter_field:' .$entityType);
    		$operator = \Session::get('filter_operator:' .$entityType);
    		$value = \Session::get('filter_value:' .$entityType);
    		if ($operator == 'like'){
    			$query->where('expenses.' . $field ,$operator, '%' . $value . '%');
    		}elseif ($operator == 'date'){
    			$query->where(\DB::raw('YEAR(' . $field .')'), '=', $value);
    		}
    		else{
    			$query->where('expenses.' . $field ,$operator, $value);
    		}
    	}
    	
    	if (\Session::get('filter_category:' .$entityType)) {
    		$value = \Session::get('filter_category_value:' .$entityType);
    		$query->where('expenses.category_id','=', $value);
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
    		
    		$query->whereBetween('expenses.expense_date', array($start_date, $end_date))->get();
    		
    	}
 
    	if (\Session::get('filter_year:' .$entityType)) {
    		$value = \Session::get('filter_year_value:' .$entityType);
    		$query->where(\DB::raw('YEAR(expenses.expense_date)'), '=', $value);
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
    		
    		$query->whereBetween('expenses.expense_date', array($start_date, $end_date))->get();
    	}
    	
    	if ($filter) {
    		$query->where(function ($query) use ($filter) {
    			$query->where('expenses.name', 'like', '%'.$filter.'%')
    			->orWhere('expenses.description', 'like', '%'.$filter.'%');
    		});
    	}
    
    	return $query;
    }
    public function getOverviewDatatable($accountId, $search)
    {
    
    	$expenses = $search;
    	 
    	$table = \Datatable::query($expenses);
    
    	 
    	$table->addColumn('name', function ($model) { return link_to('expenses/'.$model->public_id.'/edit', $model->name); });
    	$table->addColumn('description', function ($model) { return link_to('expenses/'.$model->public_id, $model->description); });
    	$table->addColumn('amount', function ($model) { return Utils::formatMoney($model->amount); });
    	$table->addColumn('expense_date', function ($model) { return Utils::timestampToDateString(strtotime($model->expense_date)); });
    	 
    	return $table->addColumn('expense_date', function ($model) { return Utils::timestampToDateString(strtotime($model->expense_date)); })
    
    	->make();
    }
    public function getDatatable($accountId, $search, $entityType = null)
    {
    	$expenses = $search;
    	$table = \Datatable::query($expenses);
    	
    	if($entityType != ENTITY_OVERVIEW){
    		$table->addColumn('checkbox', function ($model) { return '<div class="checkbox table-checkbox"><input type="checkbox" name="ids[]" value="'.$model->public_id.'" '.Utils::getEntityRowClass($model).'><label for="ids[]"></label></label></div>'; });
    	}
    	
    	$table->addColumn('name', function ($model) { return link_to('expenses/'.$model->public_id.'/edit', $model->name); });
    	$table->addColumn('description', function ($model) { return link_to('expenses/'.$model->public_id, $model->description); });
    	$table->addColumn('amount', function ($model) { return Utils::formatMoney($model->amount); });
    	$table->addColumn('expense_date', function ($model) { return Utils::timestampToDateString(strtotime($model->expense_date)); });
    	
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
    			$str .= '<li><a href="'.\URL::to('expenses/'.$model->public_id.'/edit').'">'.trans('texts.edit_expense').'</a></li>
						    <li class="divider"></li>
						    <li><a href="'.\URL::to('expenses/create/'.$model->public_id).'">'.trans('texts.new_expense').'</a></li>
						    <li class="divider"></li>
						    <li><a href="javascript:archiveEntity('.$model->public_id.')">'.trans('texts.archive_expense').'</a></li>';
    		} else {
    			$str .= '<li><a href="javascript:restoreEntity('.$model->public_id.')">'.trans('texts.restore_expense').'</a></li>';
    		}
    		return $str.'<li><a href="javascript:deleteEntity('.$model->public_id.')">'.trans('texts.delete_expense').'</a></li></ul>
							</div>';
    		}
    	})
    	->make();
    }
    
    public function getErrors($input)
    {
        $rules = array(
            'amount' => 'required',
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
            $expense = Expense::scope($publicId)->firstOrFail();
        } else {
            $expense = Expense::createNew();
        }

        $expense->expense_date = Utils::toSqlDate($input['expense_date']);

       	$clientId = Client::getPrivateId($input['client_id']);
        $productId = Product::getPrivateId($input['product_id']);
        $categoryId = Category::getPrivateId($input['category_id']);

        $expense->name = trim($input['name']);
        $expense->description = trim($input['description']);
        $amount = Utils::parseFloat($input['amount']);
            
        if ($filename != '' ){
           	$expense->path=$path;
           	$expense->file_name=$filename;
        }
            
        $expense->client_id = $clientId;
        $expense->amount = $amount;
        $expense->product_id = $productId;
        $expense->category_id = $categoryId;


        $expense->save();

        return $expense;
    }
    
    public function bulk($ids, $action)
    {
        if (!$ids) {
            return 0;
        }

        $expenses = Expense::withTrashed()->scope($ids)->get();

        foreach ($expenses as $expense) {
            if ($action == 'restore') {
                $expense->restore();
            } else {
                if ($action == 'delete') {
                    $expense->is_deleted = true;
                    $expense->save();
                }

                $expense->delete();
            }
        }

        return count($expenses);
    }
}
