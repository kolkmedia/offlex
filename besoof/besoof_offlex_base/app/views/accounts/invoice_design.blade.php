@extends('accounts.nav')

@section('head')
    @parent


    <script src="{{ asset('js/pdf_viewer.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/compatibility.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/pdfmake.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/vfs_fonts.js') }}" type="text/javascript"></script>

@stop

@section('content')
    @parent
    @include('accounts.nav_advanced')
    <div class="row">
        <div class="col-md-6">

            {{ Former::open()->addClass('warn-on-exit')->onchange('refreshPDF()') }}
            {{ Former::populate($account) }}
            {{ Former::populateField('hide_quantity', intval($account->hide_quantity)) }}
            {{ Former::populateField('hide_paid_to_date', intval($account->hide_paid_to_date)) }}

            {{ Former::legend('invoice_design') }}

            @if (!Utils::isPro() || InvoiceDesign::count() == COUNT_FREE_DESIGNS)
                {{ Former::select('invoice_design_id')->fromQuery($invoiceDesigns, 'name', 'id')->class('form-control normal-form-control') }}
            @else
                {{ Former::select('invoice_design_id')->fromQuery($invoiceDesigns, 'name', 'id')->class('form-control normal-form-control')  }}
            @endif

            {{ Former::text('font_size')->type('number')->min('0')->step('1')->style('width:120px') }}

            {{ Former::legend('specify_colors') }}
            <p>{{trans('texts.specify_colors_label')}}</p>

            <div clas="form-group">
                <p>{{trans('texts.specify_colors_primair')}}</p>
                {{ Former::text('primary_color',false) }}
            </div>
            <div clas="form-group">
                <p>{{trans('texts.specify_colors_secondair')}}</p>
                {{ Former::text('secondary_color',false) }}
            </div>

            {{ Button::success_link(URL::to('/company/advanced_settings/customize_design'), trans("texts.customize_design"),array('class' => 'pull-right'))}}

            <p>&nbsp;</p>
            <p>&nbsp;</p>

            {{ Former::legend('invoice_options') }}
            <div class="checkbox">
                {{ Former::checkbox('hide_quantity',false)->raw() }}
                <label for="hide_quantity">{{trans('texts.hide_quantity_help')}} </label>
            </div>
            <div class="checkbox">
                {{ Former::checkbox('hide_paid_to_date',false)->raw() }}
                <label for="hide_paid_to_date">{{trans('texts.hide_paid_to_date_help')}} </label>
            </div>

            <p>&nbsp;</p>
            <p>&nbsp;</p>

            @if (Auth::user()->isPro())
                {{ Former::actions( Button::btn_info_submit(trans('texts.save'))) }}
            @else
                <script>
                    $(function () {
                        $('form.warn-on-exit input').prop('disabled', true);
                    });
                </script>
            @endif

            {{ Former::close() }}

        </div>
        <div class="col-md-6">
            @include('invoices.pdf', ['account' => Auth::user()->account, 'pdfHeight' => 1050])
        </div>
    </div>

    <script>
        var invoiceDesigns = {{ $invoiceDesigns }};
        var invoice = {{ json_encode($invoice) }};

        function getDesignJavascript() {
            var id = $('#invoice_design_id').val();
            if (id == '-1') {
                showMoreDesigns();
                $('#invoice_design_id').val(1);
                return invoiceDesigns[0].javascript;
            } else {
                var design = _.find(invoiceDesigns, function(design){ return design.id == id});
                return design ? design.javascript : '';
            }
        }

        function getPDFString(cb) {
            invoice.is_pro = {{ Auth::user()->isPro() ? 'true' : 'false' }};
            invoice.account.hide_quantity = $('#hide_quantity').is(":checked");
            invoice.account.hide_paid_to_date = $('#hide_paid_to_date').is(":checked");
            invoice.invoice_design_id = $('#invoice_design_id').val();

            OFFLEX.primaryColor = $('#primary_color').val();
            OFFLEX.secondaryColor = $('#secondary_color').val();
            OFFLEX.fontSize = parseInt($('#font_size').val());

            var fields = ['item', 'description', 'unit_cost', 'quantity'];
            invoiceLabels.old = {};

            for (var i=0; i<fields.length; i++) {
                var field = fields[i];
                var val = $('#labels_' + field).val();
                if (invoiceLabels.old.hasOwnProperty(field)) {
                    invoiceLabels.old[field] = invoiceLabels[field];
                }
                if (val) {
                    invoiceLabels[field] = val;
                }
            }
            generatePDF(invoice, getDesignJavascript(), true, cb);
        }

        $(function () {
            var options = {
                preferredFormat: 'hex',
                disabled: {{ Auth::user()->isPro() ? 'false' : 'true' }},
                showInitial: false,
                showInput: true,
                allowEmpty: true,
                clickoutFiresChange: true,
            };

            $('#primary_color').spectrum(options);
            $('#secondary_color').spectrum(options);

            refreshPDF();
        });

    </script>

@stop