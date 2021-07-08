<?php

use offlex\repositories\DocumentRepository;

class DocumentApiController extends Controller
{
    protected $documentRepo;

    public function __construct(DocumentRepository $documentRepo)
    {
        $this->documentRepo = $documentRepo;
    }

    public function index()
    {
        $documents = Document::scope()->orderBy('created_at', 'desc')->get();
        $documents = Utils::remapPublicIds($documents->toArray());

        $response = json_encode($documents, JSON_PRETTY_PRINT);
        $headers = Utils::getApiHeaders(count($documents));

        return Response::make($response, 200, $headers);
    }

}
