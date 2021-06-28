@extends('layouts.template-header')

@section('onReady')
    $('input#name').focus();
@stop
@section('content')
    {{ Former::open_for_files($url)->addClass('container-fluid container-fixed-lg warn-on-exit')->method($method)}}

    @if ($document)
        {{Former::populate($document)}}
    @endif

    <div class="panel panel-default">
        <div class="panel-body">
            <div class="invoice padding-30 sm-padding-10">
                <div class="row">
                    <div class="col-md-3 pull-left p-b-25">
                        {{ Former::legend('enter_document') }}
                        {{ Former::text('document_date')->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar"></i>') }}
                        {{ Former::select('category_id')->addOption('','')->fromQuery($categories, 'name', 'id')->class('full-width')->data_init_plugin("select2") }}
                        {{ Former::text('name') }}
                        {{ Former::textarea('description') }}

                        {{ Former::file('receipt')->max(2, 'MB')->accept('file') }}

                        {{ Button::btn_info_submit(trans('texts.save')) }}
                        {{ Button::btn_default_link('documents/', trans('texts.cancel')); }}
                    </div>
                    @if ($document)
                        <div class="col-md-4 pull-left p-b-25 p-t-50">
                            @if ($document->file_name !='' )
                                <center>
                                    <?php
                                    $file = File::extension($document->getFilePath());
                                    $image = false;
                                    $path = $document->path .'/'. $document->file_name;
                                    $file = new Symfony\Component\HttpFoundation\File\File($path);
                                    $mime = $file->getMimeType();
                                    $isImage = str_contains($mime, 'image');
                                    ?>

                                    @if ($isImage)
                                        <?php $image = true; ?>
                                    @endif

                                    @if ($image)
                                        <a href="#"
                                           onclick="showDocument()">
                                            {{ HTML::image(URL::to('/doc/' . $document->public_id), "Declaratie", array( 'width' => 250, 'class' => 'panel panel-default' )) }}
                                        </a>
                                        &nbsp;
                                        <h5 class="all-caps hint-text">{{ $document->file_name }}</h5>
                                        <button onclick="deleteFile('{{$document->public_id}}')"
                                                class="btn-primary btn-sm btn"
                                                type="button">{{trans('texts.remove_file')}}</button>
                                        <button onclick="showDocument()" class="btn-primary btn-sm btn"
                                                type="button">Bekijk
                                        </button>
                                    @else
                                            <a href="/doc/{{$document->public_id}}" target="_blank">
                                                <h5 class="all-caps hint-text">{{ $document->file_name }}</h5>
                                                <i class="pg-download" style="font-size:78px;"></i></br> downloaden </a>
                                        </br></br>
                                        <button onclick="deleteFile('{{$document->public_id}}')"
                                                class="btn-primary btn-sm btn"
                                                type="button">{{trans('texts.remove_file')}}</button>
                                        <button onclick="showDocument()" class="btn-primary btn-sm btn"
                                                type="button">Meer info
                                        </button>
                                    @endif
                                </center><br/>
                            @endif
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if ($document)
        <div class="modal fade" id="documentModal" tabindex="-1" role="dialog" aria-labelledby="documentModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header clearfix text-left">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="documentModalLabel">{{ $document->file_name }}</h4>
                    </div>
                    </br>
                    <div style="background-color: #fff" class="modal-body">
                        @if ($document->file_name !='' )
                            @if ($image)
                                {{ HTML::image(URL::to('/doc/' . $document->public_id), "Declaratie", array( 'width' => '100%', 'class' => 'panel panel-default' )) }}
                            @else
                                <a href="/doc/{{$document->public_id}}" target="_blank">{{ $document->file_name }}</a>
                            @endif
                        @endif
                            </br> </br>
                            Datum: {{$document->document_date}}</br>
                            Naam: {{$document->name}}</br>
                            Omschrijving: {{$document->description}}</br>
                    </div>

                    <div class="modal-footer" style="margin-top: 0px" id="changePasswordFooter">
                        <button type="button" class="btn btn-default" id="cancelChangePasswordButton"
                                data-dismiss="modal">
                            Sluiten
                        </button>
                    </div>

                </div>
            </div>
        </div>
    @endif
    {{ Former::close() }}

    @if ($document)
        {{ Form::open(['url' => 'documents/' . $document->public_id . '/remove_file', 'class' => 'removeFileForm']) }}
        {{ Form::close() }}
    @endif

    <script type="text/javascript">

        var invoices = {{ $invoices }};
        var clients = {{ $clients }};
        var products = {{ $products }};
        var categories = {{ $categories }};

        function submitForm(action) {
            if (action == 'deleteFile') {
                if (!confirm('{{ trans('texts.are_you_sure') }}')) {
                    return;
                }
            }

            $('#action').val(action);
            $('.removeFileForm').submit();
        }

        function deleteFile(id) {
            $('#id').val(id);
            submitForm('deleteFile');
        }
        function showDocument() {
            $('#documentModal').modal('show');
        }
        $(function () {
            @if ($document)
            	$('#document_date').datepicker('update', '{{ $document->document_date }}')
            @else
            	$('#document_date').datepicker('update', new Date());
            @endif
        });

    </script>
@stop
