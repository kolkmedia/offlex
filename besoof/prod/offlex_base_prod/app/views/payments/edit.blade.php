@extends('layouts.template-header')

@section('onReady')
    $('input#name').focus();
@stop

@section('content')

    {{ Former::open($url)->addClass('container-fluid container-fixed-lg warn-on-exit')->method($method)->rules(array(
        'client' => 'required',
        'invoice' => 'required',
        'amount' => 'required',
    )); }}
    @if ($payment)
        {{ Former::populate($payment) }}
    @endif

    <div class="panel panel-default">
        <div class="panel-body">
            <div class="invoice padding-30 sm-padding-10">
                <div class="row">
                    <div class="col-md-6 pull-left p-b-25">
                        {{ Former::legend('enter_payment') }}
                        @if (!$payment)
                            {{ Former::select('client')->addOption('', '')->addGroupClass('client-select')}}
                            {{ Former::select('invoice')->addOption('', '')->addGroupClass('invoice-select')}}
                            {{ Former::text('amount') }}
                        @endif

                        {{ Former::select('payment_type_id')->addOption('','')
                            ->fromQuery($paymentTypes, 'name', 'id')->class('full-width')->data_init_plugin("select2") }}
                        {{ Former::text('payment_date')->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar"></i>') }}
                        {{ Former::text('transaction_reference') }}
                        {{-- Former::select('currency_id')->addOption('','')
                            ->fromQuery($currencies, 'name', 'id')->select(Session::get(SESSION_CURRENCY, DEFAULT_CURRENCY)) --}}

                        {{ Button::btn_info_submit(trans('texts.save')) }}
                        {{ Button::btn_default_link('payments/', trans('texts.cancel')); }}

                    </div>
                </div>
            </div>
        </div>
    </div>

    {{ Former::close() }}

    <script type="text/javascript">

        var invoices = {{ $invoices }};
        var clients = {{ $clients }};

        $(function () {

            @if ($payment)
            $('#payment_date').datepicker('update', '{{ $payment->payment_date }}')
            @else
            $('#payment_date').datepicker('update', new Date());
            populateInvoiceComboboxes({{$clientPublicId}}, {{ $invoicePublicId }});
            @endif

            //$('#payment_type_id').combobox();

        });

    </script>

@stop
