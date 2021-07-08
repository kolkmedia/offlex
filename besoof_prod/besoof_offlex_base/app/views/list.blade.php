@extends('layouts.template-header')

@section('content')
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
                    {{ DropdownButton::btn_info(trans('texts.archive'),Navigation::links(
                    array(
                        array(trans('texts.archive_'.$entityType), "javascript:submitForm('archive')"),
                        array(trans('texts.delete_'.$entityType), "javascript:submitForm('delete')"),
                        )
                    ), array('id'=>'archive'))->split(); }}
                </div>
            </div>
            <div class="pull-left checkbox">
                <div class="col-xs-12">
                    <input id="trashed" type="checkbox" onclick="setTrashVisible()"{{ Session::get("show_trash:{$entityType}") ? 'checked' : ''}}/>
                    <label for="trashed">
                        {{ trans('texts.show_archived_deleted')}} {{ strtolower(trans('texts.'.$entityType.'s')) }}
                    </label>
                </div>
            </div>
            <div class="pull-right">
                <div class="col-xs-12">
                    <a class="btn btn-complete " href="{{URL::to($entityType . 's/create')}}" class="btn btn-default">
                        <i class="fa fa-plus"></i>
                        {{ trans("texts.new_$entityType") }}
                    </a>
                </div>
            </div>
            <div class="input-group transparent col-md-1 pull-right">
                <input type="text" class="form-control" id="tableFilter" style="width:150px;" placeholder="{{ trans('texts.filter') }}" id="icon-filter" name="icon-filter">
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