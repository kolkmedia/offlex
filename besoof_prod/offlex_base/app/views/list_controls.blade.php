@extends('layouts.template-header')

@section('content')
    @if ($categories)
        {{Former::populate($categories)}}
        <style>
            .select-holder {
                padding-top: 20px;
                padding-bottom: 20px;
            }
        </style>
    @endif
    <div class="content">
        @if ((!isset($showBreadcrumbs) || $showBreadcrumbs))
            <div class="jumbotron m-b-0" data-pages="parallax">
                <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                    <div class="inner">
                        {{ HTML::breadcrumbs() }}
                    </div>
                </div>
            </div>
        @endif
        @if ($listControlPage)
            <div class="form-actions">
                <nav class="navbar navbar-default bg-master-lighter sm-padding-10 ">
                    <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                        <div class="collapse navbar-collapse" id="sub-nav">
                            <div class="row">
                                @if (!empty($typeOfList))
                                    @foreach ($typeOfList as $type)
                                        @if ($type == 'overview')
                                            <div class="col-md-2">
                                                <div class="select-holder">
                                                    {{ Former::select('overview')->addOption(trans('texts.overviews'),'0')->addOption(trans('texts.invoices'), '1')->addOption(trans('texts.expenses'), '2')->style('display:inline;width:150px')->raw()->class('form-control normal-form-control')}}
                                                </div>
                                            </div>
                                        @endif
                                        @if ($type == 'clients' and \Session::get('view:' .$entityType) == 1)
                                            <div class="col-md-2">
                                                <div class="select-holder">
                                                    {{ Former::select('client_id')->addOption(trans('texts.client_id'),'0')->style('display:inline;width:150px')->raw()->fromQuery($clients, 'name', 'id')->class('form-control normal-form-control')}}
                                                </div>
                                            </div>
                                        @endif
                                        @if ($type == 'category' and \Session::get('view:' .$entityType) == 2)
                                            <div class="col-md-2">
                                                <div class="select-holder">
                                                    {{ Former::select('category_id')->addOption(trans('texts.category_id'),'0')->style('display:inline;width:150px')->raw()->fromQuery($categories, 'name', 'id')->class('form-control normal-form-control')}}
                                                </div>
                                            </div>
                                        @endif
                                        @if ($type == 'category' and $entityType == 'expense')
                                                <div class="col-md-2">
                                                    <div class="select-holder">
                                                        {{ Former::select('category_id')->addOption(trans('texts.category_id'),'0')->style('display:inline;width:150px')->raw()->fromQuery($categories, 'name', 'id')->class('form-control normal-form-control')}}
                                                    </div>
                                                </div>
                                        @endif
                                        @if ($type == 'quarters')
                                            <div class="col-md-2">
                                                <div class="select-holder">
                                                    {{ Former::select('quarter_id')->addOption(trans('texts.quarter_id'),'0')->style('display:inline;width:150px')->raw()->fromQuery($quarters, 'name', 'id')->class('form-control normal-form-control')}}
                                                </div>
                                            </div>
                                        @endif

                                        @if ($type == 'expense_year')
                                            <div class="col-md-2">
                                                <div class="select-holder">
                                                    {{Former::select('year_id')->addOption(trans('texts.year_id'),'0')->style('display:inline;width:150px')->raw()->range(2013, 2050)->class('form-control normal-form-control')}}
                                                </div>
                                            </div>
                                        @endif

                                    @endforeach
                                    <div class="col-md-2">
                                        <div class="select-holder">
                                            <div class="col-xs-12">
                                                <a class="btn btn-default " href="#" onclick="resetFilters()"
                                                   class="btn btn-reset">
                                                    <i class="fa fa-undo"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        @endif
        <div class="container-fluid container-fixed-lg bg-white">
            <div class="panel">
                {{ Former::open($entityType . 's/bulk')->addClass('listForm') }}
                <div style="display:none">
                    {{ Former::text('action') }}
                    {{ Former::text('statusId') }}
                    {{ Former::text('id') }}
                </div>
                <div class="panel-heading">
                    <div class="pull-left">
                        <div class="col-xs-12 ">
                            @if ($entityType != 'overview')
                                {{ DropdownButton::btn_info(trans('texts.archive'),Navigation::links(
                                array(
                                    array(trans('texts.archive_'.$entityType), "javascript:submitForm('archive')"),
                                    array(trans('texts.delete_'.$entityType), "javascript:submitForm('delete')"),
                                    )
                                ), array('id'=>'archive'))->split(); }}
                            @endif

                        </div>
                    </div>
                    <div class="pull-left checkbox">
                        <div class="col-xs-12">
                            @if ($entityType != 'overview')
                            <input id="trashed" type="checkbox"
                                   onclick="setTrashVisible()"{{ Session::get("show_trash:{$entityType}") ? 'checked' : ''}}/>
                            <label for="trashed">
                                {{ trans('texts.show_archived_deleted')}} {{ strtolower(trans('texts.'.$entityType.'s')) }}
                            </label>
                            @endif
                        </div>
                    </div>
                    <div class="pull-right">
                        <div class="col-xs-12">
                            @if ($entityType != 'overview')
                            <a class="btn btn-complete " href="{{URL::to($entityType . 's/create')}}"
                               class="btn btn-default">
                                <i class="fa fa-plus"></i>
                                {{ trans("texts.new_$entityType") }}
                            </a>
                            @endif
                        </div>
                    </div>
                    <div class="input-group transparent col-md-1 pull-right">
                        <input type="text" class="form-control" id="tableFilter" style="width:150px;"
                               placeholder="{{ trans('texts.filter') }}" id="icon-filter" name="icon-filter">
                <span class="input-group-addon ">
                    <i class="pg-search"></i>
                </span>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="panel-body">
                    @if (isset($secEntityType))
                        {{ Datatable::table()
                            ->addColumn($secColumns)
                            ->setUrl(route('api.' . $secEntityType . 's'))
                            ->setOptions('sPaginationType', 'bootstrap')
                            ->render('datatable') }}
                    @endif
                    {{ Datatable::table()
                        ->addColumn($columns)
                        ->setUrl(route('api.' . $entityType . 's'))
                        ->setOptions('sPaginationType', 'bootstrap')
                        ->render('datatable') }}
                </div>
                {{ Former::close() }}
            </div>

        </div>
    </div>
    <script type="text/javascript">

        function submitForm(action) {
            if (action == 'delete') {
                if (!confirm('Are you sure?')) {
                    return;
                }
            }
            $('#action').val(action);
            $('form.listForm').submit();
        }

        function resetFilters() {
            window.location = '{{ URL::to('reset_filter/' . $entityType) }}/';
        }

        //CATEGORY
        @if(\Session::get('filter_category:' .$entityType))
            $(function () {
                $("#category_id").val("{{\Session::get('filter_category_value:' .$entityType)}}");
            });
        @endif

        $(function () {
            $('#category_id').on('change', function () {
                var selectedValue = $(this).val();
                window.location = '{{ URL::to('filter_category/' . $entityType) }}/' + selectedValue;
            });
        });

        //YEAR
        @if(\Session::get('filter_year:' .$entityType))
            $(function () {
                $("#year_id").val("{{\Session::get('filter_year_value:' .$entityType)}}");
            });
        @endif

        $(function () {
            $('#year_id').on('change', function () {
                console.log('reset year');
                var selectedValue = $(this).val();
                window.location = '{{ URL::to('filter_year/' . $entityType) }}/' + selectedValue;
            });
        });

        //QUARTER
        @if(\Session::get('filter_quarter:' .$entityType))
            $(function () {
                $("#quarter_id").val("{{\Session::get('filter_quarter_value:' .$entityType)}}");
            });
        @endif

        $(function () {
            $('#quarter_id').on('change', function () {
                var selectedValue = $(this).val();
                window.location = '{{ URL::to('filter_quarter/' . $entityType) }}/' + selectedValue;
            });
        });
        //CLIENTS
        @if(\Session::get('filter_client:' .$entityType))
             $(function () {
                $("#client_id").val("{{\Session::get('filter_client_value:' .$entityType)}}");
            });
        @endif

        $(function () {
            $('#client_id').on('change', function () {
                var selectedValue = $(this).val();
                window.location = '{{ URL::to('filter_client/' . $entityType) }}/' + selectedValue;
            });
        });
        //OVERVIEWS
        @if(\Session::get('view:' .$entityType))
             $(function () {
                    $("#overview").val({{\Session::get('view:' .$entityType)}});
            });
        @endif

        $(function () {
            $('#overview').on('change', function () {
                var selectedValue = $(this).val();
                window.location = '{{ URL::to('filter/' . $entityType) }}/' + selectedValue;
            });
        });

        function deleteEntity(id) {
            $('#id').val(id);
            submitForm('delete');
        }

        function archiveEntity(id) {
            $('#id').val(id);
            submitForm('archive');
        }

        function restoreEntity(id) {
            $('#id').val(id);
            submitForm('restore');
        }
        function convertEntity(id) {
            $('#id').val(id);
            submitForm('convert');
        }

        function markEntity(id, statusId) {
            $('#id').val(id);
            $('#statusId').val(statusId);
            submitForm('mark');
        }

        function setTrashVisible() {
            var checked = $('#trashed').is(':checked');
            window.location = '{{ URL::to('view_archive/' . $entityType) }}' + (checked ? '/true' : '/false');
        }

        function setInvoiceVisible() {
            var checked = $('#invoice').is(':checked');
            window.location = '{{ URL::to('view_invoice_filter/' . $entityType) }}' + (checked ? '/true' : '/false');
        }

    </script>

@stop

@section('onReady')

    var tableFilter = '';
    var searchTimeout = false;

    var oTable0 = $('#DataTables_Table_0').dataTable();
    var oTable1 = $('#DataTables_Table_1').dataTable();
    function filterTable(val) {

    if (val == tableFilter) {
    return;
    }
    tableFilter = val;
    oTable0.fnFilter(val);
    @if (isset($secEntityType))
        oTable1.fnFilter(val);
    @endif
    }

    $('#tableFilter').on('keyup', function(){
    if (searchTimeout) {
    window.clearTimeout(searchTimeout);
    }

    searchTimeout = setTimeout(function() {
    filterTable($('#tableFilter').val());
    }, 1000);
    })

    window.onDatatableReady = function() {
    $(':checkbox').click(function() {
    setArchiveEnabled();
    });

    $('tbody tr').click(function(event) {
    if (event.target.type !== 'checkbox' && event.target.type !== 'button' && event.target.tagName.toLowerCase()
    !== 'a') {
    $checkbox = $(this).closest('tr').find(':checkbox:not(:disabled)');
    var checked = $checkbox.prop('checked');
    $checkbox.prop('checked', !checked);
    setArchiveEnabled();
    }
    });

    $('tbody tr').mouseover(function() {
    $(this).closest('tr').find('.tr-action').css('visibility','visible');
    }).mouseout(function() {
    $dropdown = $(this).closest('tr').find('.tr-action');
    if (!$dropdown.hasClass('open')) {
    $dropdown.css('visibility','hidden');
    }
    });

    }

    $('#archive > button').prop('disabled', true);
    $('#archive > button:first').click(function() {
    submitForm('archive');
    });

    $('.selectAll').click(function() {
    $(this).closest('table').find(':checkbox:not(:disabled)').prop('checked', this.checked);
    });

    function setArchiveEnabled() {
    var checked = $('tbody :checkbox:checked').length > 0;
    $('#archive > button').prop('disabled', !checked);
    }
@stop