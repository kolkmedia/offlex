@extends('accounts.nav')

@section('content')
    @parent

    {{ Former::open()->addClass('col-md-12 col-md-offset-0 warn-on-exit form-project') }}
    {{ Former::populateField('fill_products', intval($account->fill_products)) }}
    {{ Former::populateField('update_products', intval($account->update_products)) }}

    <div class="row">
        {{ Former::legend('product_library') }}
        <div class="col-md-12">
            <div class="checkbox">
                {{ Former::checkbox('fill_products', false)->raw() }}
                <label for="update_products">{{trans('texts.fill_products_help')}} </label>
            </div>
            <div class="checkbox">
                {{ Former::checkbox('update_products',false)->raw() }}
                <label for="update_products">{{trans('texts.update_products_help')}} </label>
            </div>
            {{ Former::actions( Button::btn_info_submit(trans('texts.save'),array('class' => 'pull-left'))) }}
            {{ Button::link_info(URL::to('products/create'), trans("texts.create_product"), array('class' => 'pull-right')) }}
        </div>
        {{ Former::close() }}
        <div class="col-md-12">
            {{ Datatable::table()
                    ->addColumn(
                      trans('texts.product'),
                      trans('texts.description'),
                      trans('texts.unit_cost'),
                      trans('texts.action'))
                    ->setUrl(url('api/products/'))
                    ->setOptions('sPaginationType', 'bootstrap')
                    ->setOptions('bFilter', false)
                    ->setOptions('bAutoWidth', false)
                    ->setOptions('aoColumns', [[ "sWidth"=> "20%" ], [ "sWidth"=> "45%" ], ["sWidth"=> "20%"], ["sWidth"=> "15%" ]])
                    ->setOptions('aoColumnDefs', [['bSortable'=>false, 'aTargets'=>[3]]])
                    ->render('datatable') }}
        </div>
    </div>

    <script>
        window.onDatatableReady = function () {
            $('tbody tr').mouseover(function () {
                $(this).closest('tr').find('.tr-action').css('visibility', 'visible');
            }).mouseout(function () {
                $dropdown = $(this).closest('tr').find('.tr-action');
                if (!$dropdown.hasClass('open')) {
                    $dropdown.css('visibility', 'hidden');
                }
            });
        }
    </script>


@stop