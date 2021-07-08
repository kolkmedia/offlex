<?php

use offlex\repositories\ExpenseRepository;

class ExpenseApiController extends Controller
{
    protected $expenseRepo;

    public function __construct(ExpenseRepository $expenseRepo)
    {
        $this->expenseRepo = $expenseRepo;
    }

    public function index()
    {
        $expenses = Expense::scope()->orderBy('created_at', 'desc')->get();
        $expenses = Utils::remapPublicIds($expenses->toArray());

        $response = json_encode($expenses, JSON_PRETTY_PRINT);
        $headers = Utils::getApiHeaders(count($expenses));

        return Response::make($response, 200, $headers);
    }

}
