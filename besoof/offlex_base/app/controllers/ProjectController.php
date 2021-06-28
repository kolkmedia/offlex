<?php

class ProjectController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
        $data = [
            'title' => trans('texts.projects'),
            'entityType' => ENTITY_PROJECT,
            'columns' => Utils::trans(['checkbox', 'id', 'start_date', 'end_date', 'discount', 'hours']),
        ];

        return View::make('list', $data);

	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create($clientPublicId = 0)
	{
        $client = null;
        $account = Account::with('country')->findOrFail(Auth::user()->account_id);

        if ($clientPublicId) {
            $client = Client::scope($clientPublicId)->firstOrFail();
        }

        $data = array(
            'entityType' => ENTITY_PROJECT,
            'account' => $account,
            'data' => Input::old('data'),
            'method' => 'POST',
            'url' => 'projects',
            'title' => trans('texts.new_project'),
            'detailPage' => true,
            'client' => $client,);
        $data = array_merge($data, self::getViewModel());

        return View::make('timesheets.edit', $data);
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
