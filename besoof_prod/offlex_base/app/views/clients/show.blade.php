@extends('layouts.template-header')

@section('content')
    <nav class="navbar navbar-default bg-master-lighter sm-padding-10" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sub-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="sub-nav">
                <div class="row">
                    <div class="col-sm-4">
                        {{ Former::open('clients/bulk')->addClass('mainForm')}}
                        <div style="display:none">
                            {{ Former::text('action') }}
                            {{ Former::text('id')->value($client->public_id) }}
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                @if ($gatewayLink)
                                    {{ Button::link($gatewayLink, trans('texts.view_in_stripe'), ['target' => '_blank']) }}
                                @endif
                                @if ($client->trashed())
                                    <a href="#" onclick="onRestoreClick()">
                                        <i class="fa fa-undo m-r-10"></i>{{trans('texts.restore_client')}}
                                    </a>
                                @else
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-file-text m-r-10"></i>{{trans('texts.edit_client')}}
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="{{URL::to('clients/' . $client->public_id . '/edit')}}">{{trans('texts.edit_client')}}</a>
                                        </li>
                                        <li>
                                            <a href="#" onclick="onArchiveClick()">{{trans('texts.archive_client')}}</a>
                                        </li>
                                        <li>
                                            <a href="#" onclick="onDeleteClick()">{{trans('texts.delete_client')}}</a>
                                        </li>
                                    </ul>
                                @endif
                            </li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                @if (!$client->trashed())
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-file-text m-r-10"></i>{{trans('texts.create_invoice')}}
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" role="menu">
                                        @foreach ($actionLinks as $actionLink)
                                            <li>
                                                <a href="{{$actionLink[1]}}">{{$actionLink[0]}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                @endif
                            </li>
                        </ul>
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="{{HTML::clean_link('clients')}}">
                                    <i class="fa  fa-arrow-left m-r-10"></i>{{trans('texts.clients')}}
                                </a>
                            </li>
                        </ul>

                        {{ former::close() }}
                    </div>
                    <div class="col-sm-4 pull-right">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="#" class="p-r-10"
                                   onclick="$.Pages.setFullScreen(document.querySelector('html'));">
                                    <i class="fa fa-expand"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="container-fluid container-fixed-lg">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="invoice padding-50 sm-padding-10">
                    <h2>{{ $client->getDisplayName() }}</h2>
                    @if ($client->last_login > 0)
                        <h3 style="margin-top:0px">
                            <small>
                                {{ trans('texts.last_logged_in') }} {{ Utils::timestampToDateTimeString(strtotime($client->last_login)); }}
                            </small>
                        </h3>
                    @endif

                    <div class="row">
                        <div class="col-md-3">
                            <h3>{{ trans('texts.details') }}</h3>

                            <p>{{ $client->getIdNumber() }}</p>

                            <p>{{ $client->getVatNumber() }}</p>

                            <p>{{ $client->getAddress() }}</p>

                            <p>{{ $client->getCustomFields() }}</p>

                            <p>{{ $client->getPhone() }}</p>

                            <p>{{ $client->getNotes() }}</p>

                            <p>{{ $client->getIndustry() }}</p>

                            <p>{{ $client->getWebsite() }}</p>

                            <p>{{ $client->payment_terms ? trans('texts.payment_terms') . ": Net " . $client->payment_terms : '' }}</p>
                        </div>

                        <div class="col-md-3">
                            <h3>{{ trans('texts.contacts') }}</h3>
                            @foreach ($client->contacts as $contact)
                                {{ $contact->getDetails() }}
                            @endforeach
                        </div>

                        <div class="col-md-6">
                            <h3>{{ trans('texts.standing') }}
                                <table class="table" style="width:300px">
                                    <tr>
                                        <td>
                                            <small>{{ trans('texts.paid_to_date') }}</small>
                                        </td>
                                        <td style="text-align: right">{{ Utils::formatMoney($client->paid_to_date, $client->currency_id); }}</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <small>{{ trans('texts.balance') }}</small>
                                        </td>
                                        <td style="text-align: right">{{ Utils::formatMoney($client->balance, $client->currency_id); }}</td>
                                    </tr>
                                    @if ($credit > 0)
                                        <tr>
                                            <td>
                                                <small>{{ trans('texts.credit') }}</small>
                                            </td>
                                            <td style="text-align: right">{{ Utils::formatMoney($credit, $client->currency_id); }}</td>
                                        </tr>
                                    @endif
                                </table>
                            </h3>

                        </div>
                    </div>

                    <p>&nbsp;</p>

                    <ul class="nav nav-tabs nav-tabs-fillup">
                        {{ HTML::tab_link('#activity', trans('texts.activity'), true) }}
                        @if (Utils::isPro())
                            {{ HTML::tab_link('#quotes', trans('texts.quotes')) }}
                        @endif
                        {{ HTML::tab_link('#invoices', trans('texts.invoices')) }}
                        {{ HTML::tab_link('#payments', trans('texts.payments')) }}
                        {{ HTML::tab_link('#credits', trans('texts.credits')) }}
                    </ul>

                    <div class="tab-content">

                        <div class="tab-pane active" id="activity">

                            {{ Datatable::table()
                                ->addColumn(
                                    trans('texts.date'),
                                    trans('texts.message'),
                                    trans('texts.balance'),
                                    trans('texts.adjustment'))
                                ->setUrl(url('api/activities/'. $client->public_id))
                                ->setOptions('sPaginationType', 'bootstrap')
                                ->setOptions('bFilter', false)
                                ->setOptions('aaSorting', [['0', 'desc']])
                                ->render('datatable') }}

                        </div>

                        @if (Utils::isPro())
                            <div class="tab-pane" id="quotes">

                                {{ Datatable::table()
                                    ->addColumn(
                                        trans('texts.quote_number'),
                                        trans('texts.quote_date'),
                                        trans('texts.total'),
                                        trans('texts.due_date'),
                                        trans('texts.status'))
                                    ->setUrl(url('api/quotes/'. $client->public_id))
                                    ->setOptions('sPaginationType', 'bootstrap')
                                    ->setOptions('bFilter', false)
                                    ->setOptions('aaSorting', [['0', 'desc']])
                                    ->render('datatable') }}

                            </div>
                        @endif

                        <div class="tab-pane" id="invoices">

                            @if ($hasRecurringInvoices)
                                {{ Datatable::table()
                                    ->addColumn(
                                        trans('texts.frequency_id'),
                                        trans('texts.start_date'),
                                        trans('texts.end_date'),
                                        trans('texts.invoice_total'))
                                    ->setUrl(url('api/recurring_invoices/' . $client->public_id))
                                    ->setOptions('sPaginationType', 'bootstrap')
                                    ->setOptions('bFilter', false)
                                    ->setOptions('aaSorting', [['0', 'asc']])
                                    ->render('datatable') }}
                            @endif

                            {{ Datatable::table()
                                ->addColumn(
                                        trans('texts.invoice_number'),
                                        trans('texts.invoice_date'),
                                        trans('texts.invoice_total'),
                                        trans('texts.balance_due'),
                                        trans('texts.due_date'),
                                        trans('texts.status'))
                                ->setUrl(url('api/invoices/' . $client->public_id))
                                ->setOptions('sPaginationType', 'bootstrap')
                                ->setOptions('bFilter', false)
                                ->setOptions('aaSorting', [['0', 'asc']])
                                ->render('datatable') }}

                        </div>
                        <div class="tab-pane" id="payments">

                            {{ Datatable::table()
                                        ->addColumn(
                                            trans('texts.invoice'),
                                            trans('texts.transaction_reference'),
                                            trans('texts.method'),
                                            trans('texts.payment_amount'),
                                            trans('texts.payment_date'))
                                ->setUrl(url('api/payments/' . $client->public_id))
                                ->setOptions('sPaginationType', 'bootstrap')
                                ->setOptions('bFilter', false)
                                ->setOptions('aaSorting', [['0', 'asc']])
                                ->render('datatable') }}

                        </div>
                        <div class="tab-pane" id="credits">

                            {{ Datatable::table()
                                        ->addColumn(
                                                trans('texts.credit_amount'),
                                                trans('texts.credit_balance'),
                                                trans('texts.credit_date'),
                                                trans('texts.private_notes'))
                                ->setUrl(url('api/credits/' . $client->public_id))
                                ->setOptions('sPaginationType', 'bootstrap')
                                ->setOptions('bFilter', false)
                                ->setOptions('aaSorting', [['0', 'asc']])
                                ->render('datatable') }}

                        </div>
                    </div>

                    <script type="text/javascript">

                        $(function () {
                            $('#normalDropDown > button:first').click(function () {
                                window.location = '{{ URL::to('clients/' . $client->public_id . '/edit') }}';
                            });
                            $('#primaryDropDown > button:first').click(function () {
                                window.location = '{{ URL::to('invoices/create/' . $client->public_id ) }}';
                            });
                        });

                        function onArchiveClick() {
                            $('#action').val('archive');
                            $('.mainForm').submit();
                        }

                        function onRestoreClick() {
                            $('#action').val('restore');
                            $('.mainForm').submit();
                        }

                        function onDeleteClick() {
                            if (confirm("{{ trans('texts.are_you_sure') }}")) {
                                $('#action').val('delete');
                                $('.mainForm').submit();
                            }
                        }

                    </script>
                </div>
            </div>
        </div>
    </div>
@stop