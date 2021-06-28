@extends('layouts.template-header')
@section('portlet-controls-small')
    <div class="panel-controls">
        <ul>
            <li>
                <a data-toggle="refresh" class="portlet-refresh text-black" href="#">
                    <i class="portlet-icon portlet-icon-refresh-lg-white"></i>
                </a>
            </li>
        </ul>
    </div>
@stop
@section('portlet-controls-white')
    <div class="panel-heading ">
        <div class="panel-controls">
            <ul>
                <li>
                    <a data-toggle="refresh" class="portlet-refresh" href="#">
                        <i class="portlet-icon portlet-icon-refresh-lg-white"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
@stop
@section('portlet-controls')
    <div class="panel-heading ">
        <div class="panel-controls">
            <ul>
                <li>
                    <a data-toggle="collapse" class="portlet-collapse" href="#">
                        <i class="portlet-icon portlet-icon-collapse"></i>
                    </a>
                </li>
                <li>
                    <a data-toggle="refresh" class="portlet-refresh" href="#">
                        <i class="portlet-icon portlet-icon-refresh"></i>
                    </a>
                </li>
                <li>
                    <a data-toggle="close" class="portlet-close" href="#">
                        <i class="portlet-icon portlet-icon-close"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
@stop
@section('content')
    <div class="row">
        <!--Left small widgets-->
        <div class="col-md-4 col-lg-4 col-xlg-2 no-margin">
            <div class="row">
                <div class="col-md-12 m-b-10">
                    <div class="widget-8 panel no-border bg-complete no-margin widget-loader-bar">
                        <div data-pages="portlet" class="container-xs-height full-height"
                             id="portlet-basic">
                            <div class="row-xs-height">
                                <div class="col-xs-height col-top">
                                    <div class="panel-heading top-left top-right">
                                        <div class="panel-title text-black hint-text">
                                                    <span class="fs-11 all-caps">
                                                        {{ trans('texts.in_total_revenue') }}
                                                        <i class="fa fa-chevron-right"></i>
                                                    </span>
                                        </div>
                                        @yield('portlet-controls-small')
                                    </div>
                                </div>
                            </div>
                            <div class="row-xs-height ">
                                <div class="col-xs-height col-top relative">
                                    <div class="row">
                                        <div class="p-l-20 p-t-15">
                                            <h3 class="no-margin p-b-5 text-white">
                                                @if (count($paidToDate))
                                                    @foreach ($paidToDate as $item)
                                                        {{ Utils::formatMoney($item->value, $item->currency_id); }}
                                                        <br/>
                                                    @endforeach
                                                @else
                                                    {{ Utils::formatMoney(0) }}
                                                @endif
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 m-b-10">
                    <div class="widget-8 panel no-border bg-primary no-margin widget-loader-bar">
                        <div data-pages="portlet" class="container-xs-height full-height"
                             id="portlet-basic">
                            <div class="row-xs-height">
                                <div class="col-xs-height col-top">
                                    <div class="panel-heading top-left top-right">
                                        <div class="panel-title text-white hint-text">
                                                    <span class="fs-11 all-caps">
                                                        {{ Utils::pluralize('billed_client', $billedClients) }}
                                                        <i class="fa fa-chevron-right"></i>
                                                    </span>
                                        </div>
                                        @yield('portlet-controls-small')
                                    </div>
                                </div>
                            </div>
                            <div class="row-xs-height ">
                                <div class="col-xs-height col-top relative">
                                    <div class="row">
                                        <div class="p-l-20 p-t-15">
                                            <h3 class="no-margin p-b-5 text-white">
                                                {{ $billedClients }}
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 m-b-10">
                    <div class="widget-8 panel no-border bg-danger no-margin widget-loader-bar">
                        <div data-pages="portlet" class="container-xs-height full-height"
                             id="portlet-basic">
                            <div class="row-xs-height">
                                <div class="col-xs-height col-top">
                                    <div class="panel-heading top-left top-right">
                                        <div class="panel-title text-black hint-text">
                                                    <span class="fs-11 all-caps">
                                                        {{ trans('texts.sent') }}
                                                        <i class="fa fa-chevron-right"></i>
                                                    </span>
                                        </div>
                                        @yield('portlet-controls-small')
                                    </div>
                                </div>
                            </div>
                            <div class="row-xs-height ">
                                <div class="col-xs-height col-top relative">
                                    <div class="row">
                                        <div class="p-l-20 p-t-15">
                                            <h3 class="no-margin p-b-5 text-white">
                                                {{ $invoicesSent }}
                                            </h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End left small widgets-->

        <!-- Start middle big widget -->
        <div class="col-md-8 col-lg-8 col-xlg-6">
            <div class="widget-12 panel no-border widget-loader-circle no-margin" style="height: 455px;">
                <div class="panel-heading ">
                    <div class="panel-title">{{ trans('texts.upcoming_invoices') }}
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-condensed table-hover">
                        <thead>
                        <th>{{ trans('texts.invoice_number_short') }}</th>
                        <th>{{ trans('texts.client') }}</th>
                        <th>{{ trans('texts.due_date') }}</th>
                        <th>{{ trans('texts.balance_due') }}</th>
                        </thead>
                        <tbody>
                        @foreach ($upcoming as $invoice)
                            @if (!$invoice->client->trashed())
                                <tr>
                                    <td class="hint-text small fs-12 b-r b-dashed b-grey">{{ $invoice->getLink() }}</td>
                                    <td class="text-left">{{ $invoice->client->getDisplayName() }}</td>
                                    <td class="text-left">{{ Utils::fromSqlDate($invoice->due_date) }}</td>
                                    <td class="text-left">{{ Utils::formatMoney($invoice->balance, $invoice->client->currency_id) }}</td>
                                </tr>
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xlg-4">
            <div class="widget-11 panel no-border  no-margin widget-loader-bar" style="height: 455px;">
                <div class="panel-heading ">
                    <div class="panel-title">{{ trans('texts.notifications') }}
                    </div>
                </div>
                <div class="widget-11-table auto-overflow">
                    <table class="table table-condensed table-hover">
                        <tbody>
                        @foreach ($activities as $activity)
                            <tr>
                                <td class="text-left b-r b-dashed b-grey" style="width:150px;">
                                    <span class="hint-text small">{{ Utils::timestampToDateString(strtotime($activity->created_at)) }}</span>
                                </td>
                                <td class="text-left b-r b-dashed b-grey">
                                    <span class="hint-text small">{{ Utils::decodeActivity($activity->message) }}</span>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- End second middle big widget -->
    </div>

    <div class="row">
        <!-- Start middle big widget-left -->
        {{--<div class="col-md-12 col-lg-12 col-xlg-4">--}}
        {{--<div class="widget-12 panel no-border widget-loader-circle margin bg-info">--}}
        {{--<div class="panel-body">--}}
        {{--<h2 class="pull-left text-white">{{ trans('texts.paid_invoice') }}</h2>--}}
        {{--@yield('portlet-controls-white')--}}
        {{--<table class="table table-condensed table-hover">--}}
        {{--<thead>--}}
        {{--<th class="text-white">{{ trans('texts.invoice_number_short') }}</th>--}}
        {{--<th class="text-white">{{ trans('texts.client') }}</th>--}}
        {{--<th class="text-white">{{ trans('texts.invoice_date') }}</th>--}}
        {{--</thead>--}}
        {{--<tbody>--}}
        {{--@foreach ($paidInvoice as $invoice)--}}
        {{--@if (!$invoice->client->trashed())--}}
        {{--<tr>--}}
        {{--<td class="hint-text small fs-12 b-r b-dashed b-grey">{{ $invoice->getLink() }}</td>--}}
        {{--<td class="text-left">{{ $invoice->client->getDisplayName() }}</td>--}}
        {{--<td class="text-left">{{ Utils::timestampToDateString(strtotime($invoice->invoice_date)) }}</td>--}}
        {{--</tr>--}}
        {{--@endif--}}
        {{--@endforeach--}}
        {{--</tbody>--}}
        {{--</table>--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--</div>--}}
        <!-- End middle big widget-left -->
        <div class="col-md-4 col-lg-4 col-xlg-2 no-margin">
            <div class="row">
                <div class="col-md-12 m-b-10">
                    <div class="widget-8 panel no-border bg-yellow no-margin widget-loader-bar">
                        <div data-pages="portlet" class="container-xs-height full-height"
                             id="portlet-basic">
                            <div class="row-xs-height">
                                <div class="col-xs-height col-top">
                                    <div class="panel-heading top-left top-right">
                                        <div class="panel-title text-black hint-text">
                                                    <span class="fs-11 all-caps">
                                                        {{ Utils::pluralize('active_client', $activeClients) }}
                                                        <i class="fa fa-chevron-right"></i>
                                                    </span>
                                        </div>
                                        @yield('portlet-controls-small')
                                    </div>
                                </div>
                            </div>
                            <div class="row-xs-height ">
                                <div class="col-xs-height col-top relative">
                                    <div class="row">
                                        <div class="p-l-20 p-t-15">
                                            <h3 class="no-margin p-b-5 text-white">
                                                {{ $activeClients }}
                                            </h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 m-b-10">
                    <div class="widget-8 panel no-border bg-success no-margin widget-loader-bar">
                        <div data-pages="portlet" class="container-xs-height full-height"
                             id="portlet-basic">
                            <div class="row-xs-height">
                                <div class="col-xs-height col-top">
                                    <div class="panel-heading top-left top-right">
                                        <div class="panel-title text-black hint-text">
                                                    <span class="fs-11 all-caps">
                                                         {{ trans('texts.average_invoice') }}
                                                        <i class="fa fa-chevron-right"></i>
                                                    </span>
                                        </div>
                                        @yield('portlet-controls-small')
                                    </div>
                                </div>
                            </div>
                            <div class="row-xs-height ">
                                <div class="col-xs-height col-top relative">
                                    <div class="row">
                                        <div class="p-l-20 p-t-15">
                                            <h3 class="no-margin p-b-5 text-white">
                                                @foreach ($averageInvoice as $item)
                                                    {{ Utils::formatMoney($item->invoice_avg, $item->currency_id); }}
                                                @endforeach
                                            </h3>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8 col-lg-8 col-xlg-6">
            <div class="widget-12 panel no-border widget-loader-circle margin"  style="height: 300px;">
                <div class="panel-heading ">
                    <div class="panel-title">{{ trans('texts.invoices_past_due') }}
                    </div>
                </div>
                <div class="widget-11-table auto-overflow">
                    <table class="table table-condensed table-hover">
                        <thead>
                        <th>{{ trans('texts.invoice_number_short') }}</th>
                        <th>{{ trans('texts.client') }}</th>
                        <th>{{ trans('texts.due_date') }}</th>
                        <th>{{ trans('texts.balance_due') }}</th>
                        </thead>
                        <tbody>
                        @foreach ($pastDue as $invoice)
                            @if (!$invoice->client->trashed())
                                <tr>
                                    <td class="hint-text small fs-12 b-r b-dashed b-grey">{{ $invoice->getLink() }}</td>
                                    <td class="text-left">{{ $invoice->client->getDisplayName() }}</td>
                                    <td class="text-left">{{ Utils::fromSqlDate($invoice->due_date) }}</td>
                                    <td class="text-left">{{ Utils::formatMoney($invoice->balance, $invoice->client->currency_id) }}</td>
                                </tr>
                            @endif
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-12 col-lg-12 col-xlg-4" >
            <div class="widget-11 panel no-border  no-margin widget-loader-bar" style="height: 300px;">
                <div class="panel-heading ">
                    <div class="panel-title">{{ trans('texts.quotes') }}
                    </div>
                </div>
                <div class="widget-11-table auto-overflow" style="height: 250px;">
                    <table class="table table-condensed table-hover">
                        <tbody>
                        @foreach ($quotes as $invoiceRepo)
                            <tr>
                                <td class="text-left b-r b-dashed b-grey" style="width:150px;">
                                    <span class="hint-text small">{{ $invoiceRepo->getLink() }}</span>
                                </td>
                                <td class="text-left b-r b-dashed b-grey">
                                    <span class="hint-text small">{{ $invoiceRepo->client->getDisplayName() }}</span>
                                </td>
                                <td class="text-left">
                                    <span class="hint-text small">{{ Utils::formatMoney($invoiceRepo->amount, $invoice->client->currency_id) }}</span>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@stop
