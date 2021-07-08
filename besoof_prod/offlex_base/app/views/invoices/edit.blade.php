@extends('layouts.template-header')

@section('head')
    @parent
    <script src="{{ asset('js/pdf_viewer.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/compatibility.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/pdfmake.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('js/vfs_fonts.js') }}" type="text/javascript"></script>
@stop

@section('content')
    @if ($invoice && $invoice->id)
        <div class="jumbotron m-b-0" data-pages="parallax">
            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                <div class="inner">
                    <ol class="breadcrumb pull-left">
                        <li>{{ link_to(($entityType == ENTITY_QUOTE ? 'quotes' : 'invoices'), trans('texts.' . ($entityType == ENTITY_QUOTE ? 'quotes' : 'invoices'))) }}</li>
                        <li class='active'>{{ $invoice->invoice_number }}</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="form-actions">
        <nav class="navbar navbar-default bg-master-lighter sm-padding-10 ">
            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                <div class="collapse navbar-collapse" id="sub-nav">
                    <div class="row">
                        @if (!$invoice || (!$invoice->trashed() && !$invoice->client->trashed()))
                            @if ($invoice && $invoice->id)
                                <div id="primaryActionsTop">
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle"
                                               data-toggle="dropdown">
                                                <i class="fa fa-file-text m-r-10"></i>{{ trans("texts.save_{$entityType}") }}
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a href="javascript:onSaveClick()"
                                                       id="saveButton">{{ trans("texts.save_{$entityType}") }}</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:onCloneClick()">{{ trans("texts.clone_{$entityType}") }}</a>
                                                </li>
                                                <li>
                                                    <a href="{{ URL::to("{$entityType}s/{$entityType}_history/{$invoice->public_id}") }}">{{ trans("texts.view_history") }}</a>
                                                </li>

                                                @if ($invoice->invoice_status_id < INVOICE_STATUS_SENT && !$invoice->is_recurring)
                                                    <li>
                                                        <a href="javascript:onMarkClick()">{{ trans("texts.mark_sent") }}</a>
                                                    </li>
                                                @endif

                                                @if ($invoice && $entityType == ENTITY_QUOTE)
                                                    @if ($invoice->quote_invoice_id)
                                                        <li>
                                                            <a href="{{ URL::to("invoices/{$invoice->quote_invoice_id}/edit") }}">{{ trans("texts.view_invoice") }}</a>
                                                        </li>
                                                    @else
                                                        <li>
                                                            <a href="javascript:onConvertClick()">{{ trans("texts.convert_to_invoice") }}</a>
                                                        </li>
                                                    @endif
                                                @elseif ($invoice && $entityType == ENTITY_INVOICE)
                                                    @if ($invoice->quote_id)
                                                        <li>
                                                            <a href="{{ URL::to("quotes/{$invoice->quote_id}/edit") }}">{{ trans("texts.view_quote") }}</a>
                                                        </li>
                                                    @endif
                                                        <li class="divider"></li>
                                                @endif


                                                <li>
                                                    <a href="javascript:onArchiveClick()">{{ trans("texts.archive_{$entityType}") }}</a>
                                                </li>
                                                <li>
                                                    <a href="javascript:onDeleteClick()">{{ trans("texts.delete_{$entityType}") }}</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            @else
                                <div class="col-sm-4">
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#" id="saveButton"
                                               onclick="onSaveClick()">
                                                <i class="fa fa-save m-r-10"></i>{{ trans("texts.save_{$entityType}") }}
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            @endif
                            <div class="col-sm-4">
                                @if (!$invoice || ($invoice && !$invoice->is_recurring))
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#" id="email_button"
                                               onclick="onEmailClick()"
                                               data-toggle="tooltip"
                                               data-placement="bottom" title=""
                                               data-original-title="{{trans("texts.email_{$entityType}")}}">
                                                <i class="fa fa-send m-r-10"></i>{{trans("texts.email_{$entityType}")}}
                                            </a>
                                        </li>
                                    </ul>
                                @endif
                                @if ($invoice && $invoice->id && $entityType == ENTITY_INVOICE && !$invoice->is_recurring)
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#" onclick="onPaymentClick()"
                                               data-toggle="tooltip"
                                               data-original-title="{{trans('texts.enter_payment')}}">
                                                <i class="fa fa-usd m-r-10"></i>{{ trans("texts.enter_payment") }}
                                            </a>
                                        </li>
                                    </ul>
                                @endif
                                @elseif ($invoice && $invoice->trashed() && !$invoice->is_deleted == '1')
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#"
                                               onclick="submitAction('restore')">
                                                <i class="fa cloud-download m-r-10"></i>{{trans('texts.restore')}}
                                                <span class="caret"></span>
                                            </a>
                                        </li>
                                    </ul>
                                @endif
                            </div>
                    </div>
                </div>
            </div>
        </nav>
        </div>
    @endif

    <div class="container-fluid container-fixed-lg">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="invoice padding-30 sm-padding-10">
                    {{ Former::open($url)->method($method)->addClass('warn-on-exit')->rules(array(
                         'client' => 'required',
                         'email' => 'required',
                         'product_key' => 'max:20'
                     )) }}
                    <div class="row">
                        <div class="col-md-6 pull-left p-b-25">
                            @if (file_exists($account->getLogoPath()))
                                <img width="{{ $account->getLogoWidth() }}"
                                     height="{{ $account->getLogoHeight() }}"
                                     alt="" class="invoice-logo"
                                     data-src-retina="{{ HTML::image_data($account->getLogoPath()) }}"
                                     data-src="{{ HTML::image_data($account->getLogoPath()) }}"
                                     src="{{ HTML::image_data($account->getLogoPath()) }}">
                            @endif
                        </div>
                        <div class="pull-right sm-m-t-20">
                            <h2 class="all-caps hint-text">{{$title}}</h2>
                        </div>
                        <input type="submit" style="display:none" name="submitButton" id="submitButton">

                        <div data-bind="with: invoice">
                            <div class="row" style="min-height:195px" onkeypress="formEnterClick(event)">
                                <div class="container-sm-height">
                                    <div class="row-sm-height">
                                        <div class="col-md-2 p-l-5 p-b-20 p-t-15 pull-left">
                                            <div class="col-md-10 pull-left">
                                                {{ Former::select('client')->addOption('', '')->data_bind("dropdown: client")->addGroupClass('ignore client_select closer-row')}}
                                            </div>
                                            @if ($invoice && $invoice->id)
                                                <h5 class="semi-bold m-t-0">
                                                    <a id="editClientLink" class="pointer"
                                                       data-bind="click: $root.showClientForm, text: getClientDisplayName(ko.toJS(client()))"></a>
                                                </h5>
                                            @endif
                                            <div class="col-md-10 pull-left" data-bind="with: client">
                                                <div style="display:block">
                                                    {{--data-bind="visible: vat_number().length > 0"--}}
                                                    <address>
                                                        <span data-bind="html: vat_number.display"></span>
                                                        @if (isset($client->country->name))
                                                            {{$client->country->name}}
                                                        @endif
                                                    </address>
                                                    <div class="p-b-20 p-t-15 pull-left">
                                                        <a id="createClientLink" class="pointer"
                                                           data-bind="click: $root.showClientForm">
                                                            <i class="fa fa-edit"></i> {{trans('texts.edit_client_details')}}
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div data-bind="with: client"
                                             class="col-md-4 p-l-5 p-b-20 p-t-15 pull-left">
                                            <h5 class="no-margin"
                                                data-bind="visible: contacts().length > 0 &amp;&amp; contacts()[0].email()">{{trans('texts.contact')}}
                                                :</h5>

                                            <div style="display:block"
                                                 data-bind="visible: contacts().length > 0 &amp;&amp; contacts()[0].email(), foreach: contacts">
                                                <label class="checkbox"
                                                       data-bind="attr: {for: $index() + '_check'}"
                                                       onclick="refreshPDF()">
                                                    <div class="checkbox">
                                                        <input type="checkbox"
                                                               data-bind="checked: send_invoice, attr: {id: $index() + '_check'}"
                                                               value="1">
                                                        <label data-bind="attr: {for: $index() + '_check'}"> <span
                                                                    data-bind="html: email.display"></span></label>
                                                    </div>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3 p-l-5 p-b-20 p-t-15 pull-left" id="col_2">
                                            <div data-bind="visible: !is_recurring()">
                                                {{ Former::text('invoice_date')->data_bind("datePicker: invoice_date, valueUpdate: 'afterkeydown'")->label(trans("texts.{$entityType}_date"))
                                                            ->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar" onclick="toggleDatePicker(\'invoice_date\')"></i>') }}
                                                {{ Former::text('due_date')->data_bind("datePicker: due_date, valueUpdate: 'afterkeydown'")
                                                            ->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar" onclick="toggleDatePicker(\'due_date\')"></i>') }}
                                            </div>
                                            @if ($entityType == ENTITY_INVOICE)
                                                <div data-bind="visible: is_recurring" style="display: none">
                                                    {{ Former::select('frequency_id')->options($frequencies)->data_bind("value: frequency_id")->class('form-control normal-form-control') }}
                                                    {{ Former::text('start_date')
                                                    ->data_bind("datePicker: start_date, valueUpdate: 'afterkeydown'")
                                                    ->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar" onclick="toggleDatePicker(\'start_date\')"></i>') }}
                                                    {{ Former::text('end_date')
                                                    ->data_bind("datePicker: end_date, valueUpdate: 'afterkeydown'")
                                                    ->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar" onclick="toggleDatePicker(\'end_date\')"></i>') }}
                                                </div>
                                                @if ($invoice && $invoice->recurring_invoice_id)
                                                    1
                                                    <div class="pull-right" style="padding-top: 6px">
                                                        Created by
                                                        a {{ link_to('/invoices/'.$invoice->recurring_invoice_id, 'recurring invoice') }}
                                                    </div>
                                                @else
                                                    {{--Zet onderstaande div aan om recurring te verbergen--}}
                                                    {{--<div data-bind="visible: invoice_status_id() === 0">--}}
                                                    <h4>{{trans('texts.recurring_invoices')}}</h4>
                                                    <div class="checkbox">
                                                        <input type="checkbox" data-bind="checked: is_recurring"
                                                               id="recurring" name="recurring">
                                                        <label for="recurring">{{trans('texts.enable')}} </label>
                                                    </div>
                                                    {{--</div>--}}
                                                @endif
                                            @endif
                                        </div>
                                        <div class="col-md-3 p-l-5 p-b-20 p-t-15 pull-left" id="col_2">
                                            {{Former::text('invoice_number')->label(trans("texts.{$entityType}_number_short"))->data_bind("value: invoice_number, valueUpdate: 'afterkeydown'") }}
                                            {{Former::text('po_number')->label(trans('texts.po_number_short'))->data_bind("value: po_number, valueUpdate: 'afterkeydown'") }}
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        {{Former::text('discount')->data_bind("value: discount, valueUpdate: 'afterkeydown'")->type('number')->min('0')->class('form-control bfh-number')->step('any')}}
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>{{trans('texts.discount_percent'),"/",trans('texts.discount_amount')}}</label>
                                                        {{Former::select('is_amount_discount')->addOption(trans('texts.discount_percent'), '0')->addOption(trans('texts.discount_amount'), '1')->data_bind("value: is_amount_discount")->raw()->class('form-control normal-form-control')}}
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6 p-t-15">
                                                    <div class="form-group">
                                                        <label for="recurring"
                                                               class="control-label col-lg-4 col-sm-4">{{ trans('texts.taxes') }}</label>
                                                        <a href="#" data-bind="click: $root.showTaxesForm"
                                                           class="btn btn-info">
                                                            <i class="glyphicon glyphicon-list-alt"></i>
                                                            {{ trans('texts.manage_rates') }}
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            {{ Former::hidden('data')->data_bind("value: ko.mapping.toJSON(model)") }}
                            <div class="row">
                                <div class="table-responsive">
                                    <table class="table invoice-table" style="margin-bottom: 0px !important">
                                        <thead>
                                        <tr>
                                            <th style="min-width:32px;" class="no-border"></th>
                                            <th style="min-width:160px">{{ trans('texts.item') }}</th>
                                            <th style="width:100%">{{ trans('texts.description') }}</th>
                                            <th style="min-width:120px">{{ trans('texts.unit_cost') }}</th>
                                            <th style="{{ $account->hide_quantity ? 'display:none' : 'min-width:120px' }}">{{ trans('texts.quantity') }}</th>
                                            <th style="min-width:120px;display:none;"
                                                data-bind="visible: $root.invoice_item_taxes.show">{{ trans('texts.tax') }}</th>
                                            <th style="min-width:120px;">{{ trans('texts.line_total') }}</th>
                                            <th style="min-width:32px;" class="no-border"></th>
                                        </tr>
                                        </thead>
                                        <tbody data-bind="sortable: { data: invoice_items, afterMove: onDragged }">
                                        <tr data-bind="event: { mouseover: showActions, mouseout: hideActions }"
                                            class="sortable-row">
                                            <td class="no-border td-icon">
                                                <i style="display:none"
                                                   data-bind="visible: actionsVisible() &amp;&amp; $parent.invoice_items().length > 1"
                                                   class="fa fa-sort"></i>
                                            </td>
                                            <td>
                                                {{ Former::text('product_key')->useDatalist($products->toArray(), 'product_key')->onkeyup('onItemChange()')
                                                ->raw()->data_bind("value: product_key, valueUpdate: 'afterkeydown'")->addClass('datalist') }}
                                            </td>
                                            <td>
                                                <textarea data-bind="value: wrapped_notes, valueUpdate: 'afterkeydown'"
                                                          rows="1" cols="60" style="resize: none;"
                                                          class="form-control word-wrap"></textarea>
                                            </td>
                                            <td>
                                                <input onkeyup="onItemChange()"
                                                       data-bind="value: prettyCost, valueUpdate: 'afterkeydown'"
                                                       style="text-align: right" class="form-control"/>
                                            </td>
                                            <td style="{{ $account->hide_quantity ? 'display:none' : '' }}">
                                                <input onkeyup="onItemChange()"
                                                       data-bind="value: prettyQty, valueUpdate: 'afterkeydown'"
                                                       style="text-align: right" class="form-control"/>
                                            </td>
                                            <td style="display:none;"
                                                data-bind="visible: $root.invoice_item_taxes.show">
                                                <select class="full-width" style="width:100%"
                                                        data-bind="value: tax, options: $root.tax_rates, optionsText: 'displayName'"
                                                        data-init-plugin="select2"></select>
                                            </td>
                                            <td style="text-align:right;padding-top:25px !important">
                                                <div class="line-total" data-bind="text: totals.total"></div>
                                            </td>
                                            <td style="cursor:pointer" class="no-border td-icon">
                                                &nbsp;<i style="display:none"
                                                         data-bind="click: $parent.removeItem, visible: actionsVisible() &amp;&amp; $parent.invoice_items().length > 1"
                                                         class="fa fa-minus-circle redlink"
                                                         title="Remove item"/>
                                            </td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <td class="no-border"></td>
                                            <td colspan="2" rowspan="6" style="vertical-align:top">
                                                <div role="tabpanel" class="col-md-12 panel panel-default">
                                                    <ul class="nav nav-tabs nav-tabs-fillup">
                                                        <li class="active">
                                                            <a data-toggle="tab" href="#notes"
                                                               aria-controls="notes"><span>{{ trans('texts.note_to_client') }}</span></a>
                                                        </li>
                                                        <li class="">
                                                            <a data-toggle="tab" href="#terms"
                                                               aria-controls="terms"><span> {{ trans("texts.terms") }}</span></a>
                                                        </li>
                                                        <li class="">
                                                            <a data-toggle="tab" href="#footer"
                                                               aria-controls="footer"><span>{{ trans('texts.footer_invoice') }}</span></a>
                                                        </li>
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div role="tabpanel" class="tab-pane active" id="notes"
                                                             style="padding-bottom:44px">
                                                            {{ Former::textarea('public_notes')->data_bind("value: wrapped_notes, valueUpdate: 'afterkeydown'")
                                                                                                   ->label(null)->style('resize: none; min-width: 450px;')->rows(3) }}
                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="terms">
                                                            {{ Former::textarea('terms')->data_bind("value:wrapped_terms, placeholder: '', valueUpdate: 'afterkeydown'")
                                                            ->label(false)->style('resize: none; min-width: 450px')->rows(3)->help('<div class="checkbox">
                                                                <input type="checkbox" id="'.trans('texts.save_as_default_terms').'" class="" data-bind="checked: set_default_terms">
                                                                <label for="'.trans('texts.save_as_default_terms').'">'.trans('texts.save_as_default_terms').'</label>
                                                            </div>')}}
                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="footer">
                                                            {{ Former::textarea('invoice_footer')->data_bind("value:wrapped_footer, placeholder: '', valueUpdate: 'afterkeydown'")
                                                            ->label(false)->style('resize: none; min-width: 450px')->rows(3)
                                                            ->help('<div class="checkbox">
                                                                <input type="checkbox" id="'.trans('texts.save_as_default_footer').'" class="selectAll" data-bind="checked: set_default_footer">
                                                                <label for="'.trans('texts.save_as_default_footer').'">'.trans('texts.save_as_default_footer').'</label>
                                                            </div>')}}
                                                        </div>
                                                    </div>


                                                </div>
                                            </td>
                                            <td class="no-border" style="display:none"
                                                data-bind="visible: $root.invoice_item_taxes.show"/>
                                            <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ trans('texts.subtotal') }}</td>
                                            <td style="text-align: right"><span
                                                        data-bind="text: totals.subtotal"/></td>
                                        </tr>

                                        <tr style="display:none" data-bind="visible: discount() != 0">
                                            <td class="no-border" colspan="3"/>
                                            <td style="display:none" class="no-border"
                                                data-bind="visible: $root.invoice_item_taxes.show"/>
                                            <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ trans('texts.discount') }}</td>
                                            <td style="text-align: right"><span
                                                        data-bind="text: totals.discounted"/>
                                            </td>
                                        </tr>

                                        @if (($account->custom_invoice_label1 || ($invoice && floatval($invoice->custom_value1)) != 0) && $account->custom_invoice_taxes1)
                                            <tr>
                                                <td class="no-border" colspan="3"/>
                                                <td style="display:none" class="no-border"
                                                    data-bind="visible: $root.invoice_item_taxes.show"/>
                                                <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ $account->custom_invoice_label1 }}</td>
                                                <td style="text-align: right;padding-right: 28px" colspan="2">
                                                    <input
                                                            class="form-control"
                                                            data-bind="value: custom_value1, valueUpdate: 'afterkeydown'"/>
                                                </td>
                                            </tr>
                                        @endif

                                        @if (($account->custom_invoice_label2 || ($invoice && floatval($invoice->custom_value2)) != 0) && $account->custom_invoice_taxes2)
                                            <tr>
                                                <td class="no-border" colspan="3"/>
                                                <td style="display:none" class="no-border"
                                                    data-bind="visible: $root.invoice_item_taxes.show"/>
                                                <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ $account->custom_invoice_label2 }}</td>
                                                <td style="text-align: right;padding-right: 28px" colspan="2">
                                                    <input
                                                            class="form-control"
                                                            data-bind="value: custom_value2, valueUpdate: 'afterkeydown'"/>
                                                </td>
                                            </tr>
                                        @endif

                                        <tr style="display:none" data-bind="visible: $root.invoice_taxes.show">
                                            <td class="no-border" colspan="3"/>
                                            <td style="display:none" class="no-border"
                                                data-bind="visible: $root.invoice_item_taxes.show"/>
                                            @if (!$account->hide_quantity)
                                                <td>{{ trans('texts.tax') }}</td>
                                            @endif
                                            <td style="min-width:120px">
                                                <select class="form-control normal-form-control"
                                                        style="width:100%"
                                                        data-bind="value: tax, options: $root.tax_rates, optionsText: 'displayName'"></select>
                                            </td>
                                            <td style="text-align: right"><span
                                                        data-bind="text: totals.taxAmount"/>
                                            </td>
                                        </tr>

                                        @if (($account->custom_invoice_label1 || ($invoice && floatval($invoice->custom_value1)) != 0) && !$account->custom_invoice_taxes1)
                                            <tr>
                                                <td class="no-border" colspan="3"/>
                                                <td style="display:none" class="no-border"
                                                    data-bind="visible: $root.invoice_item_taxes.show"/>
                                                <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ $account->custom_invoice_label1 }}</td>
                                                <td style="text-align: right;padding-right: 28px" colspan="2">
                                                    <input
                                                            class="form-control"
                                                            data-bind="value: custom_value1, valueUpdate: 'afterkeydown'"/>
                                                </td>
                                            </tr>
                                        @endif

                                        @if (($account->custom_invoice_label2 || ($invoice && floatval($invoice->custom_value2)) != 0) && !$account->custom_invoice_taxes2)
                                            <tr>
                                                <td class="no-border" colspan="3"/>
                                                <td style="display:none" class="no-border"
                                                    data-bind="visible: $root.invoice_item_taxes.show"/>
                                                <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ $account->custom_invoice_label2 }}</td>
                                                <td style="text-align: right;padding-right: 28px" colspan="2">
                                                    <input
                                                            class="form-control"
                                                            data-bind="value: custom_value2, valueUpdate: 'afterkeydown'"/>
                                                </td>
                                            </tr>
                                        @endif

                                        @if (!$account->hide_paid_to_date)
                                            <tr>
                                                <td class="no-border" colspan="3"/>
                                                <td style="display:none" class="no-border"
                                                    data-bind="visible: $root.invoice_item_taxes.show"/>
                                                <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">{{ trans('texts.paid_to_date') }}</td>
                                                <td style="text-align: right"
                                                    data-bind="text: totals.paidToDate"></td>
                                            </tr>
                                        @endif

                                        <tr>
                                            <td class="no-border" colspan="3"/>
                                            <td style="display:none"
                                                data-bind="visible: $root.invoice_item_taxes.show"/>
                                            <td colspan="{{ $account->hide_quantity ? 1 : 2 }}">
                                                <b>{{ trans($entityType == ENTITY_INVOICE ? 'texts.balance_due' : 'texts.total') }}</b>
                                            </td>
                                            <td style="text-align: right"><span data-bind="text: totals.total"/>
                                            </td>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div style="display:none">
                                    {{ Former::populateField('entityType', $entityType) }}
                                    {{ Former::text('entityType') }}
                                    {{ Former::text('action') }}
                                    {{Former::text('pdfupload')}}

                                @if ($invoice && $invoice->id)
                                        {{ Former::populateField('id', $invoice->public_id) }}
                                        {{ Former::text('id') }}
                                    @endif
                                </div>
                                <nav class="navbar navbar-default bg-master-lighter sm-padding-10"
                                     role="navigation">
                                    <div class="container-fluid">
                                        <div class="collapse navbar-collapse" id="sub-nav">
                                            <div class="row">
                                                @if (!$invoice || (!$invoice->trashed() && !$invoice->client->trashed()))
                                                    @if ($invoice && $invoice->id)
                                                        <div class="col-sm-4" id="primaryActions">
                                                            <ul class="nav navbar-nav">
                                                                <li class="dropdown">
                                                                    <a href="#" class="dropdown-toggle"
                                                                       data-toggle="dropdown">
                                                                        <i class="fa fa-file-text m-r-10"></i>{{ trans("texts.save_{$entityType}") }}
                                                                        <span class="caret"></span>
                                                                    </a>
                                                                    <ul class="dropdown-menu">
                                                                        <li><a href="javascript:onSaveClick()"
                                                                               id="saveButton">{{ trans("texts.save_{$entityType}") }}</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="javascript:onCloneClick()">{{ trans("texts.clone_{$entityType}") }}</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="{{ URL::to("{$entityType}s/{$entityType}_history/{$invoice->public_id}") }}">{{ trans("texts.view_history") }}</a>
                                                                        </li>

                                                                        @if ($invoice->invoice_status_id < INVOICE_STATUS_SENT && !$invoice->is_recurring)
                                                                            <li>
                                                                                <a href="javascript:onMarkClick()">{{ trans("texts.mark_sent") }}</a>
                                                                            </li>
                                                                        @endif

                                                                        @if ($invoice && $entityType == ENTITY_QUOTE)
                                                                            @if ($invoice->quote_invoice_id)
                                                                                <li>
                                                                                    <a href="{{ URL::to("invoices/{$invoice->quote_invoice_id}/edit") }}">{{ trans("texts.view_invoice") }}</a>
                                                                                </li>
                                                                            @else
                                                                                <li>
                                                                                    <a href="javascript:onConvertClick()">{{ trans("texts.convert_to_invoice") }}</a>
                                                                                </li>
                                                                            @endif
                                                                        @elseif ($invoice && $entityType == ENTITY_INVOICE)
                                                                            @if ($invoice->quote_id)
                                                                                <li>
                                                                                    <a href="{{ URL::to("quotes/{$invoice->quote_id}/edit") }}">{{ trans("texts.view_quote") }}</a>
                                                                                </li>
                                                                            @endif
                                                                                <li class="divider"></li>
                                                                        @endif

                                                                        <li>
                                                                            <a href="javascript:onArchiveClick()">{{ trans("texts.archive_{$entityType}") }}</a>
                                                                        </li>
                                                                        <li>
                                                                            <a href="javascript:onDeleteClick()">{{ trans("texts.delete_{$entityType}") }}</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    @else
                                                        <div class="col-sm-4">
                                                            <ul class="nav navbar-nav">
                                                                <li class="dropdown">
                                                                    <a href="#" id="saveButton"
                                                                       onclick="onSaveClick()">
                                                                        <i class="fa fa-save m-r-10"></i>{{ trans("texts.save_{$entityType}") }}
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    @endif
                                                    <div class="col-sm-4">
                                                        @if (!$invoice || ($invoice && !$invoice->is_recurring))
                                                            <ul class="nav navbar-nav">
                                                                <li class="dropdown">
                                                                    <a href="#" id="email_button"
                                                                       onclick="onEmailClick()"
                                                                       data-toggle="tooltip"
                                                                       data-placement="bottom" title=""
                                                                       data-original-title="{{trans("texts.email_{$entityType}")}}">
                                                                        <i class="fa fa-send m-r-10"></i>{{trans("texts.email_{$entityType}")}}
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        @endif
                                                        @if ($invoice && $invoice->id && $entityType == ENTITY_INVOICE && !$invoice->is_recurring)
                                                            <ul class="nav navbar-nav">
                                                                <li class="dropdown">
                                                                    <a href="#" onclick="onPaymentClick()"
                                                                       data-toggle="tooltip"
                                                                       data-original-title="{{trans('texts.enter_payment')}}">
                                                                        <i class="fa fa-usd m-r-10"></i>{{ trans("texts.enter_payment") }}
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        @endif
                                                        @elseif ($invoice && $invoice->trashed() && !$invoice->is_deleted == '1')
                                                            <ul class="nav navbar-nav">
                                                                <li class="dropdown">
                                                                    <a href="#"
                                                                       onclick="submitAction('restore')">
                                                                        <i class="fa cloud-download m-r-10"></i>{{trans('texts.restore')}}
                                                                        <span class="caret"></span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        @endif
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <ul class="nav navbar-nav">
                                                            <li class="dropdown">
                                                                <a href="#" onclick="onDownloadClick()"
                                                                   data-toggle="tooltip"
                                                                   data-placement="bottom" title=""
                                                                   data-original-title="{{trans('texts.download_pdf')}}">
                                                                    <i class="fa fa-download m-r-10"></i>{{trans('texts.download_pdf')}}
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="pull-right p-t-15">
                                                            @if (!Utils::isPro() || InvoiceDesign::count() == COUNT_FREE_DESIGNS)
                                                                {{ Former::select('invoice_design_id')->style('display:inline;width:150px')->raw()->fromQuery($invoiceDesigns, 'name', 'id')->data_bind("value: invoice_design_id")->class('form-control normal-form-control') }}
                                                            @else
                                                                {{ Former::select('invoice_design_id')->style('display:inline;width:150px')->raw()->fromQuery($invoiceDesigns, 'name', 'id')->data_bind("value: invoice_design_id")->class('form-control normal-form-control') }}
                                                            @endif
                                                        </div>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>

                            @include('invoices.pdf', ['account' => Auth::user()->account])

                            @if (!Auth::user()->account->isPro())
                                <div style="font-size:larger">
                                    {{ trans('texts.pro_plan.remove_logo', ['link'=>'<a href="#" onclick="showProPlan(\'remove_logo\')">'.trans('texts.pro_plan.remove_logo_link').'</a>']) }}
                                </div>
                            @endif

                            <div class="modal fade" id="clientModal" tabindex="-1" role="dialog"
                                 aria-labelledby="clientModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header clearfix text-left">
                                            <button type="button" class="close"
                                                    data-dismiss="modal" aria-hidden="true">
                                                <i class="pg-close fs-14"></i>
                                            </button>
                                            <h5>
                                                <span class="semi-bold">{{ trans('texts.client') }}</span>
                                            </h5>

                                            <p class="p-b-10">{{ trans('texts.edit_client_details') }}</p>
                                        </div>
                                        <div class="modal-body" style="width: 100%">
                                            <div style="background-color: #fff" class="row"
                                                 data-bind="with: client"
                                                 onkeypress="clientModalEnterClick(event)">
                                                <ul class="nav nav-tabs nav-tabs-fillup">
                                                    <li class="active">
                                                        <a data-toggle="tab"
                                                           href="#{{ trans('texts.organization') }}">
                                                            <span>{{ trans('texts.organization') }}</span></a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab"
                                                           href="#{{ trans('texts.address') }}">
                                                            <span>{{ trans('texts.address') }}</span></a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab"
                                                           href="#{{ trans('texts.contacts') }}">
                                                            <span>{{ trans('texts.contacts') }}</span></a>
                                                    </li>
                                                    <li>
                                                        <a data-toggle="tab" href="#last">
                                                            <span>{{ trans('texts.additional_info') }}</span></a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div class="tab-pane padding-20 active slide-left"
                                                         id="{{ trans('texts.organization') }}">
                                                        <div class="row">
                                                            <div class="col-md-6 ">
                                                                {{ Former::text('name')->data_bind("value: name, valueUpdate: 'afterkeydown', attr { placeholder: name.placeholder }") }}
                                                                {{ Former::text('id_number')->data_bind("value: id_number, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('vat_number')->data_bind("value: vat_number, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('website')->data_bind("value: website, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('work_phone')->data_bind("value: work_phone, valueUpdate: 'afterkeydown'") }}

                                                                @if (Auth::user()->isPro())
                                                                    @if ($account->custom_client_label1)
                                                                        {{ Former::text('custom_value1')->label($account->custom_client_label1)
                                                                            ->data_bind("value: custom_value1, valueUpdate: 'afterkeydown'") }}
                                                                    @endif
                                                                    @if ($account->custom_client_label2)
                                                                        {{ Former::text('custom_value2')->label($account->custom_client_label2)
                                                                            ->data_bind("value: custom_value2, valueUpdate: 'afterkeydown'") }}
                                                                    @endif
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane padding-20 slide-left"
                                                         id="{{ trans('texts.address') }}">
                                                        <div class="row">
                                                            <div class="col-md-6 ">
                                                                {{ Former::legend('address') }}
                                                                {{ Former::text('address1')->data_bind("value: address1, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('address2')->data_bind("value: address2, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('city')->data_bind("value: city, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('state')->data_bind("value: state, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('postal_code')->data_bind("value: postal_code, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::select('country_id')->addOption('','')->addGroupClass('country_select')->fromQuery($countries, 'name', 'id')->data_bind("dropdown: country_id") }}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane padding-20 slide-left"
                                                         id="{{ trans('texts.contacts') }}"
                                                         data-bind='template: { foreach: contacts, beforeRemove: hideContact, afterAdd: showContact }'>
                                                        <div class="row">
                                                            <div class="col-md-6 ">
                                                                {{ Former::hidden('public_id')->data_bind("value: public_id, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('first_name')->data_bind("value: first_name, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('last_name')->data_bind("value: last_name, valueUpdate: 'afterkeydown'") }}
                                                                {{ Former::text('email')->data_bind('value: email, valueUpdate: \'afterkeydown\', attr: {id:\'email\'+$index()}') }}
                                                                {{ Former::text('phone')->data_bind("value: phone, valueUpdate: 'afterkeydown'") }}
                                                                <div class="form-group">
                                                                    <div class="col-lg-8 col-lg-offset-4 bold">
                                                                        <div data-bind="visible: $parent.contacts().length > 1">
                                                                            <a class="btn btn-danger btn-cons m-b-10 pull-right"
                                                                               href="#"
                                                                               data-bind="click: $parent.removeContact">
                                                                                <span>{{trans('texts.remove_contact')}}</span>
                                                                            </a>
                                                                        </div>
                                                                        <div data-bind="visible: $index() === ($parent.contacts().length - 1)">
                                                                            <a class="btn btn-info btn-cons m-b-10 pull-right"
                                                                               href="#"
                                                                               data-bind="click: $parent.addContact">
                                                                                <span>{{trans('texts.add_contact')}}</span>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane padding-20 slide-left"
                                                         id="last">
                                                        <div class="row">
                                                            <div class="col-md-6 ">
                                                                {{ Former::legend('additional_info') }}
                                                                {{ Former::select('payment_terms')->addOption('','0')->data_bind('value: payment_terms')
                                                                    ->fromQuery($paymentTerms, 'name', 'num_days')->class('full-width')->data_init_plugin("select2") }}
                                                                {{ Former::select('currency_id')->addOption('','')->data_bind('value: currency_id')
                                                                    ->fromQuery($currencies, 'name', 'id')->class('full-width')->data_init_plugin("select2") }}
                                                                {{ Former::select('size_id')->addOption('','')->data_bind('value: size_id')
                                                                    ->fromQuery($sizes, 'name', 'id')->class('full-width')->data_init_plugin("select2") }}
                                                                {{ Former::select('industry_id')->addOption('','')->data_bind('value: industry_id')
                                                                    ->fromQuery($industries, 'name', 'id')->class('full-width')->data_init_plugin("select2") }}
                                                                {{ Former::textarea('private_notes')->data_bind('value: private_notes') }}
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer" style="margin-top: 0px">
                                                        <span class="error-block" id="emailError"
                                                              style="display:none;float:left;font-weight:bold">{{ trans('texts.provide_email') }}</span>
                                                        <span>&nbsp;</span>
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">{{ trans('texts.cancel') }}</button>
                                                        <button id="clientDoneButton" type="button"
                                                                class="btn btn-primary"
                                                                data-bind="click: $root.clientFormComplete">{{ trans('texts.done') }}</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal fade stick-up in" id="taxModal" tabindex="-1"
                                 role="dialog"
                                 aria-labelledby="taxModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header clearfix text-left">
                                            <button type="button" class="close"
                                                    data-dismiss="modal"
                                                    aria-hidden="true">&times;</button>
                                            <h4 class="modal-title"
                                                id="taxModalLabel">{{ trans('texts.tax_rates') }}</h4>
                                        </div>
                                        <div class="modal-body" onkeypress="taxModalEnterClick(event)">
                                            <div class="table-responsive">
                                                <table class="table invoice-table"
                                                       style="margin-bottom: 0px !important">
                                                    <thead>
                                                    <tr>
                                                        <th class="no-border"></th>
                                                        <th class="no-border">{{ trans('texts.name') }}</th>
                                                        <th class="no-border">{{ trans('texts.rate') }}</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody data-bind="foreach: $root.tax_rates.filtered">
                                                    <tr data-bind="event: { mouseover: showActions, mouseout: hideActions }">
                                                        <td style="width:30px"
                                                            class="no-border"></td>
                                                        <td style="width:60px">
                                                            <input onkeyup="onTaxRateChange()"
                                                                   data-bind="value: name, valueUpdate: 'afterkeydown'"
                                                                   class="form-control"
                                                                   onchange="refreshPDF()"/>
                                                        </td>
                                                        <td style="width:60px">
                                                            <input onkeyup="onTaxRateChange()"
                                                                   data-bind="value: prettyRate, valueUpdate: 'afterkeydown'"
                                                                   style="text-align: right"
                                                                   class="form-control"
                                                                   onchange="refreshPDF()"/>
                                                        </td>
                                                        <td style="width:30px; cursor:pointer"
                                                            class="no-border td-icon">
                                                            &nbsp;<i style="width:12px;"
                                                                     data-bind="click: $root.removeTaxRate, visible: actionsVisible() &amp;&amp; !isEmpty()"
                                                                     class="fa fa-minus-circle redlink"
                                                                     title="Remove item"/>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="clearfix"></div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <h4>{{trans('texts.settings')}}</h4>
                                                    <div class="checkbox">
                                                        {{ Former::checkbox('invoice_taxes',false)->data_bind('checked: $root.invoice_taxes, enable: $root.tax_rates().length > 1')->raw() }}
                                                        <label for="invoice_taxes">{{trans('texts.enable_invoice_tax')}} </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        {{ Former::checkbox('invoice_item_taxes',false)->data_bind('checked: $root.invoice_item_taxes, enable: $root.tax_rates().length > 1')->raw() }}
                                                        <label for="invoice_item_taxes">{{trans('texts.enable_line_item_tax')}} </label>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer"
                                             style="margin-top: 0px">
                                            <button type="button" class="btn btn-default"
                                                    data-dismiss="modal">{{ trans('texts.cancel') }}</button>
                                            <button type="button"
                                                    class="btn btn-primary"
                                                    data-bind="click: $root.taxFormComplete">{{ trans('texts.done') }}</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {{ Former::close() }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function showLearnMore() {
            $('#recurringModal').modal('show');
        }

        $(function () {
            $('#country_id').combobox().on('change', function (e) {
                var countryId = parseInt($('input[name=country_id]').val(), 10);
                var foundMatch = false;
                $('#country_id option').each(function () {
                    var itemId = parseInt($(this).val(), 10);
                    if (countryId === itemId) {
                        foundMatch = true;
                        var country = {id: countryId, name: $(this).text()};
                        model.invoice().client().country = country;
                        model.invoice().client().country_id(countryId);
                        return;
                    }
                });
                if (!foundMatch) {
                    model.invoice().client().country = false;
                    model.invoice().client().country_id(0);
                }
            });

            $('[rel=tooltip]').tooltip();

            $('#invoice_date, #due_date, #start_date, #end_date').datepicker();

            @if ($client && !$invoice)
            $('input[name=client]').val({{ $client->public_id }});
            @endif

            /*
             if (clients.length == 0) {
             $('.client_select input.form-control').prop('disabled', true);
             }
             */

            var $input = $('select#client');
            $input.combobox().on('change', function (e) {
                var clientId = parseInt($('input[name=client]').val(), 10);
                if (clientId > 0) {
                    model.loadClient(clientMap[clientId]);
                } else {
                    model.loadClient($.parseJSON(ko.toJSON(new ClientModel())));
                    model.invoice().client().country = false;
                }
                refreshPDF();
            });

            // If no clients exists show the client form when clicking on the client select input
            if (clients.length === 0) {
                $('.client_select input.form-control').on('click', function () {
                    model.showClientForm();
                });
            }

            $('#invoice_footer, #terms, #public_notes, #invoice_number, #invoice_date, #due_date, #po_number, #discount, #currency_id, #invoice_design_id, #recurring, #is_amount_discount').change(function () {
                setTimeout(function () {
                    refreshPDF();
                }, 1);
            });

            @if ($client || $invoice || count($clients) == 0)
            $('#invoice_number').focus();
            @else
                $('.client_select input.form-control').focus();
            @endif

            $('#clientModal').on('shown.bs.modal', function () {
                        $('#name').focus();
                    }).on('hidden.bs.modal', function () {
                        if (model.clientBackup) {
                            model.loadClient(model.clientBackup);
                            refreshPDF();
                        }
                    })

            $('#taxModal').on('shown.bs.modal', function () {
                $('#taxModal input:first').focus();
            }).on('hidden.bs.modal', function () {
                // if the user changed the tax rates we need to trigger the
                // change event on the selects for the model to get updated
                $('table.invoice-table select').trigger('change');
            })

            $('#relatedActions > button:first').click(function () {
                onPaymentClick();
            });

            $('#primaryActions > button:first').click(function () {
                onSaveClick();
            });

            $('#primaryActionsTop > button:first').click(function () {
                onSaveClick();
            });

            $('label.radio').addClass('radio-inline');

            applyComboboxListeners();

            @if ($client)
            $input.trigger('change');
            @else
                refreshPDF();
                    @endif

                    var client = model.invoice().client();
            setComboboxValue($('.client_select'),
                    client.public_id(),
                    client.name.display());
        });

        function applyComboboxListeners() {
            var selectorStr = '.invoice-table input, .invoice-table select, .invoice-table textarea';
            $(selectorStr).off('blur').on('blur', function () {
                refreshPDF();
            });

            @if (Auth::user()->account->fill_products)
            $('.datalist').on('input', function () {
                var key = $(this).val();
                for (var i = 0; i < products.length; i++) {
                    var product = products[i];
                    if (product.product_key == key) {
                        var model = ko.dataFor(this);
                        model.notes(product.notes);
                        model.cost(accounting.toFixed(product.cost, 2));
                        model.qty(1);
                        break;
                    }
                }
                onItemChange();
                refreshPDF();
            });
            @endif
        }

        function createInvoiceModel() {
            var invoice = ko.toJS(model).invoice;
            invoice.is_pro = {{ Auth::user()->isPro() ? 'true' : 'false' }};
            invoice.is_quote = {{ $entityType == ENTITY_QUOTE ? 'true' : 'false' }};
            invoice.contact = _.findWhere(invoice.client.contacts, {send_invoice: true});

            if (!invoice.terms) {
                invoice.terms = "{{ str_replace(["\r\n","\r","\n"], '\n', addslashes($account->invoice_terms)) }}";
            }
            if (!invoice.invoice_footer) {
                invoice.invoice_footer = "{{ str_replace(["\r\n","\r","\n"], '\n', addslashes($account->invoice_footer)) }}";
            }

            @if (file_exists($account->getLogoPath()))
            invoice.image = "{{ HTML::image_data($account->getLogoPath()) }}";
            invoice.imageWidth = {{ $account->getLogoWidth() }};
            invoice.imageHeight = {{ $account->getLogoHeight() }};
            @endif

        return invoice;
        }

        function getPDFString(cb, force) {
            var invoice = createInvoiceModel();
            var design = getDesignJavascript();
            if (!design) return;
            generatePDF(invoice, design, force, cb);
        }

        function getDesignJavascript() {
            var id = $('#invoice_design_id').val();
            if (id == '-1') {
                showMoreDesigns();
                model.invoice().invoice_design_id(1);
                return invoiceDesigns[0].javascript;
            } else {
                var design = _.find(invoiceDesigns, function(design){ return design.id == id});
                return design ? design.javascript : '';
            }
        }

        function preparePdfData(action) {
            var invoice = createInvoiceModel();
            var design  = getDesignJavascript();
            if (!design) return;

            doc = generatePDF(invoice, design, true);
            doc.getDataUrl( function(pdfString){
                $('#pdfupload').val(pdfString);
                console.log("PDF: " + pdfString);
                submitAction(action);
            });
        }
        function onDownloadClick() {
            trackUrl('/download_pdf');
            var invoice = createInvoiceModel();
            var design = getDesignJavascript();
            if (!design) return;
            var doc = generatePDF(invoice, design, true);
            var fileName = invoice.is_quote ? invoiceLabels.quote : invoiceLabels.invoice;
            doc.save(fileName + '-'  + $('#invoice_number').val() + '.pdf');
        }


        function onEmailClick() {
            if (confirm('{{trans("texts.confirm_email_$entityType")}}' + '\n\n' + getSendToEmails())) {
                preparePdfData('email');
            }
        }
        function getSendToEmails() {
            var client = model.invoice().client();
            var parts = [];

            for (var i=0; i<client.contacts().length; i++) {
                var contact = client.contacts()[i];
                if (contact.send_invoice()) {
                    parts.push(contact.displayName());
                }
            }
            return parts.join('\n');
        }
        function onSaveClick() {
            if (model.invoice().is_recurring()) {
                if (confirm("{{trans("texts.confirm_recurring_email_$entityType")}}" + '\n\n' + getSendToEmails() + '\n' + "{{trans("texts.confirm_recurring_timing")}}")) {
                    submitAction('');
                }
            } else {
                preparePdfData('');
            }
        }

        function submitAction(value) {
            if (!isSaveValid()) {
                model.showClientForm();
                return;
            }
            $('#action').val(value);
            $('#submitButton').click();
        }

        function isSaveValid() {
            var isValid = false;
            for (var i = 0; i < model.invoice().client().contacts().length; i++) {
                var contact = model.invoice().client().contacts()[i];
                if (isValidEmailAddress(contact.email())) {
                    isValid = true;
                } else {
                    isValid = false;
                    break;
                }
            }
            return isValid;
        }

        function isEmailValid() {
            var isValid = false;
            var sendTo = false;
            var client = self.invoice().client();
            for (var i = 0; i < client.contacts().length; i++) {
                var contact = client.contacts()[i];
                if (isValidEmailAddress(contact.email())) {
                    isValid = true;
                    if (contact.send_invoice() || client.contacts().length == 1) {
                        sendTo = true;
                    }
                } else {
                    isValid = false;
                    break;
                }
            }
            return (isValid && sendTo)
        }

        function onMarkClick() {
            submitAction('mark');
        }

        function onCloneClick() {
            submitAction('clone');
        }

        function onConvertClick() {
            submitAction('convert');
        }

        @if ($client && $invoice)
        function onPaymentClick() {
            window.location = '{{ URL::to('payments/create/' . $client->public_id . '/' . $invoice->public_id ) }}';
        }

        function onCreditClick() {
            window.location = '{{ URL::to('credits/create/' . $client->public_id . '/' . $invoice->public_id ) }}';
        }
        @endif

        function onArchiveClick() {
            submitAction('archive');
        }

        function onDeleteClick() {
            if (confirm('Are you sure you want to delete this {{ $entityType }}?')) {
                submitAction('delete');
            }
        }

        function formEnterClick(event) {
            if (event.keyCode === 13) {
                if (event.target.type == 'textarea') {
                    return;
                }
                event.preventDefault();

                submitAction('');
                return false;
            }
        }

        function clientModalEnterClick(event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                model.clientFormComplete();
                return false;
            }
        }

        function taxModalEnterClick(event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                model.taxFormComplete();
                return false;
            }
        }

        function ViewModel(data) {
            var self = this;
            //self.invoice = data ? false : new InvoiceModel();
            self.invoice = ko.observable(data ? false : new InvoiceModel());
            self.tax_rates = ko.observableArray();

            self.loadClient = function (client) {
                ko.mapping.fromJS(client, model.invoice().client().mapping, model.invoice().client);
                self.setDueDate();
            }

            self.setDueDate = function () {
                var paymentTerms = parseInt(self.invoice().client().payment_terms());
                if (paymentTerms && !self.invoice().due_date()) {
                    var dueDate = $('#invoice_date').datepicker('getDate');
                    dueDate.setDate(dueDate.getDate() + paymentTerms);
                    self.invoice().due_date(dueDate);
                    // We're using the datepicker to handle the date formatting
                    self.invoice().due_date($('#due_date').val());
                }
            }

            self.invoice_taxes = ko.observable({{ Auth::user()->account->invoice_taxes ? 'true' : 'false' }});
            self.invoice_item_taxes = ko.observable({{ Auth::user()->account->invoice_item_taxes ? 'true' : 'false' }});

            self.mapping = {
                'invoice': {
                    create: function (options) {
                        return new InvoiceModel(options.data);
                    }
                },
                'tax_rates': {
                    create: function (options) {
                        return new TaxRateModel(options.data);
                    }
                },
            }

            if (data) {
                ko.mapping.fromJS(data, self.mapping, self);
            }

            self.invoice_taxes.show = ko.computed(function () {
                if (self.tax_rates().length > 2 && self.invoice_taxes()) {
                    return true;
                }
                if (self.invoice().tax_rate() > 0) {
                    return true;
                }
                return false;
            });

            self.invoice_item_taxes.show = ko.computed(function () {
                if (self.tax_rates().length > 2 && self.invoice_item_taxes()) {
                    return true;
                }
                for (var i = 0; i < self.invoice().invoice_items().length; i++) {
                    var item = self.invoice().invoice_items()[i];
                    if (item.tax_rate() > 0) {
                        return true;
                    }
                }
                return false;
            });

            self.tax_rates.filtered = ko.computed(function () {
                var i = 0;
                for (i; i < self.tax_rates().length; i++) {
                    var taxRate = self.tax_rates()[i];
                    if (taxRate.isEmpty()) {
                        break;
                    }
                }

                var rates = self.tax_rates().concat();
                rates.splice(i, 1);
                return rates;
            });


            self.removeTaxRate = function (taxRate) {
                self.tax_rates.remove(taxRate);
                //refreshPDF();
            }

            self.addTaxRate = function (data) {
                var itemModel = new TaxRateModel(data);
                self.tax_rates.push(itemModel);
                applyComboboxListeners();
            }

            /*
             self.getBlankTaxRate = function() {
             for (var i=0; i<self.tax_rates().length; i++) {
             var taxRate = self.tax_rates()[i];
             if (!taxRate.name()) {
             return taxRate;
             }
             }
             }
             */

            self.getTaxRate = function (name, rate) {
                for (var i = 0; i < self.tax_rates().length; i++) {
                    var taxRate = self.tax_rates()[i];
                    if (taxRate.name() == name && taxRate.rate() == parseFloat(rate)) {
                        return taxRate;
                    }
                }

                var taxRate = new TaxRateModel();
                taxRate.name(name);
                taxRate.rate(parseFloat(rate));
                if (name) {
                    taxRate.is_deleted(true);
                    self.tax_rates.push(taxRate);
                }
                return taxRate;
            }

            self.showTaxesForm = function () {
                self.taxBackup = ko.mapping.toJS(self.tax_rates);

                $('#taxModal').modal('show');
            }

            self.taxFormComplete = function () {
                model.taxBackup = false;
                $('#taxModal').modal('hide');
            }

            self.showClientForm = function () {
                trackUrl('/view_client_form');
                self.clientBackup = ko.mapping.toJS(self.invoice().client);

                $('#emailError').css("display", "none");
                $('#clientModal').modal('show');
            }

            self.clientFormComplete = function () {
                trackUrl('/save_client_form');

                var isValid = true;
                $("input[name='email']").each(function (item, value) {
                    var email = $(value).val();
                    if (!email || !isValidEmailAddress(email)) {
                        isValid = false;
                    }
                });
                if (!isValid) {
                    $('#emailError').css("display", "inline");
                    return;
                }

                var email = $('#email0').val();
                var firstName = $('#first_name').val();
                var lastName = $('#last_name').val();
                var name = $('#name').val();

                if (self.invoice().client().public_id() == 0) {
                    self.invoice().client().public_id(-1);
                }

                model.setDueDate();

                if (name) {
                    //
                } else if (firstName || lastName) {
                    name = firstName + ' ' + lastName;
                } else {
                    name = email;
                }

                setComboboxValue($('.client_select'), -1, name);

                //$('.client_select select').combobox('setSelected');
                //$('.client_select input.form-control').val(name);
                //$('.client_select .combobox-container').addClass('combobox-selected');

                $('#emailError').css("display", "none");
                //$('.client_select input.form-control').focus();

                refreshPDF();
                model.clientBackup = false;
                $('#clientModal').modal('hide');
            }

            self.clientLinkText = ko.computed(function () {
                if (self.invoice().client().public_id()) {
                    return "{{ trans('texts.edit_client_details') }}";
                }
                else {
//                     if (clients.length > {{ Auth::user()->getMaxNumClients() }}) {
//                         return '';
//                     }
//                     else {
                        return "{{ trans('texts.create_new_client') }}";
//                     }
                }
            });
        }

        function InvoiceModel(data) {
            var self = this;
            this.client = ko.observable(data ? false : new ClientModel());
            self.account = {{ $account }};
            this.id = ko.observable('');
            self.discount = ko.observable('');
            self.is_amount_discount = ko.observable(0);
            self.frequency_id = ko.observable('');
            //self.currency_id = ko.observable({{ $client && $client->currency_id ? $client->currency_id : Session::get(SESSION_CURRENCY) }});
            self.terms = ko.observable('');
            self.default_terms = ko.observable({{ $account->invoice_terms ? 'true' : 'false' }} ? wordWrapText('{{ str_replace(["\r\n","\r","\n"], '\n', addslashes($account->invoice_terms)) }}', 300) : '');
            self.set_default_terms = ko.observable(false);
            self.invoice_footer = ko.observable('');
            self.default_footer = ko.observable({{ $account->invoice_footer ? 'true' : 'false' }} ? wordWrapText('{{ str_replace(["\r\n","\r","\n"], '\n', addslashes($account->invoice_footer)) }}', 600) : '');
            self.set_default_footer = ko.observable(false);
            self.public_notes = ko.observable('');
            self.po_number = ko.observable('');
            self.invoice_date = ko.observable('{{ Utils::today() }}');
            self.invoice_number = ko.observable('{{ isset($invoiceNumber) ? $invoiceNumber : '' }}');
            self.due_date = ko.observable('');
            self.start_date = ko.observable('{{ Utils::today() }}');
            self.end_date = ko.observable('');
            self.tax_name = ko.observable();
            self.tax_rate = ko.observable();
            self.is_recurring = ko.observable(false);
            self.invoice_status_id = ko.observable(0);
            self.invoice_items = ko.observableArray();
            self.amount = ko.observable(0);
            self.balance = ko.observable(0);
            self.invoice_design_id = ko.observable({{ $account->invoice_design_id }});

            self.custom_value1 = ko.observable(0);
            self.custom_value2 = ko.observable(0);
            self.custom_taxes1 = ko.observable(false);
            self.custom_taxes2 = ko.observable(false);

            self.mapping = {
                'client': {
                    create: function (options) {
                        return new ClientModel(options.data);
                    }
                },
                'invoice_items': {
                    create: function (options) {
                        return new ItemModel(options.data);
                    }
                },
                'tax': {
                    create: function (options) {
                        return new TaxRateModel(options.data);
                    }
                },
            }

            self.addItem = function () {
                var itemModel = new ItemModel();
                @if ($account->hide_quantity)
                itemModel.qty(1);
                @endif
                self.invoice_items.push(itemModel);
                applyComboboxListeners();
            }

            if (data) {
                ko.mapping.fromJS(data, self.mapping, self);
                self.is_recurring(parseInt(data.is_recurring));
            } else {
                self.addItem();
            }

            self._tax = ko.observable();
            this.tax = ko.computed({
                read: function () {
                    return self._tax();
                },
                write: function (value) {
                    if (value) {
                        self._tax(value);
                        self.tax_name(value.name());
                        self.tax_rate(value.rate());
                    } else {
                        self._tax(false);
                        self.tax_name('');
                        self.tax_rate(0);
                    }
                }
            })

            self.wrapped_terms = ko.computed({
                read: function () {
                    return this.terms();
                },
                write: function (value) {
                    value = wordWrapText(value, 300);
                    self.terms(value);
                },
                owner: this
            });


            self.wrapped_notes = ko.computed({
                read: function () {
                    return this.public_notes();
                },
                write: function (value) {
                    value = wordWrapText(value, 300);
                    self.public_notes(value);
                },
                owner: this
            });

            self.wrapped_footer = ko.computed({
                read: function () {
                    return this.invoice_footer();
                },
                write: function (value) {
                    value = wordWrapText(value, 600);
                    self.invoice_footer(value);
                },
                owner: this
            });

            self.removeItem = function (item) {
                self.invoice_items.remove(item);
                refreshPDF();
            }


            self.totals = ko.observable();

            self.totals.rawSubtotal = ko.computed(function () {
                var total = 0;
                for (var p = 0; p < self.invoice_items().length; ++p) {
                    var item = self.invoice_items()[p];
                    total += item.totals.rawTotal();
                }
                return total;
            });

            self.totals.subtotal = ko.computed(function () {
                var total = self.totals.rawSubtotal();
                return total > 0 ? formatMoney(total, self.client().currency_id()) : '';
            });

            self.totals.rawDiscounted = ko.computed(function () {
                if (parseInt(self.is_amount_discount())) {
                    return roundToTwo(self.discount());
                } else {
                    return roundToTwo(self.totals.rawSubtotal() * (self.discount() / 100));
                }
            });

            self.totals.discounted = ko.computed(function () {
                return formatMoney(self.totals.rawDiscounted(), self.client().currency_id());
            });

            self.totals.taxAmount = ko.computed(function () {
                var total = self.totals.rawSubtotal();
                var discount = self.totals.rawDiscounted();
                total -= discount;

                /*
                 var discount = parseFloat(self.discount());
                 if (discount > 0) {
                 total = roundToTwo(total * ((100 - discount)/100));
                 }
                 */

                var customValue1 = roundToTwo(self.custom_value1());
                var customValue2 = roundToTwo(self.custom_value2());
                var customTaxes1 = self.custom_taxes1() == 1;
                var customTaxes2 = self.custom_taxes2() == 1;

                if (customValue1 && customTaxes1) {
                    total = OFFLEX.parseFloat(total) + customValue1;
                }
                if (customValue2 && customTaxes2) {
                    total = OFFLEX.parseFloat(total) + customValue2;
                }

                var taxRate = parseFloat(self.tax_rate());
                if (taxRate > 0) {
                    var tax = roundToTwo(total * (taxRate / 100));
                    return formatMoney(tax, self.client().currency_id());
                } else {
                    return formatMoney(0);
                }
            });

            this.totals.rawPaidToDate = ko.computed(function () {
                return accounting.toFixed(self.amount(), 2) - accounting.toFixed(self.balance(), 2);
            });

            this.totals.paidToDate = ko.computed(function () {
                var total = self.totals.rawPaidToDate();
                return formatMoney(total, self.client().currency_id());
            });

            this.totals.total = ko.computed(function () {
                var total = accounting.toFixed(self.totals.rawSubtotal(), 2);
                var discount = self.totals.rawDiscounted();
                total -= discount;

                /*
                 var discount = parseFloat(self.discount());
                 if (discount > 0) {
                 total = roundToTwo(total * ((100 - discount)/100));
                 }
                 */

                var customValue1 = roundToTwo(self.custom_value1());
                var customValue2 = roundToTwo(self.custom_value2());
                var customTaxes1 = self.custom_taxes1() == 1;
                var customTaxes2 = self.custom_taxes2() == 1;

                if (customValue1 && customTaxes1) {
                    total = OFFLEX.parseFloat(total) + customValue1;
                }
                if (customValue2 && customTaxes2) {
                    total = OFFLEX.parseFloat(total) + customValue2;
                }

                var taxRate = parseFloat(self.tax_rate());
                if (taxRate > 0) {
                    total = OFFLEX.parseFloat(total) + roundToTwo((total * (taxRate / 100)));
                }

                if (customValue1 && !customTaxes1) {
                    total = OFFLEX.parseFloat(total) + customValue1;
                }
                if (customValue2 && !customTaxes2) {
                    total = OFFLEX.parseFloat(total) + customValue2;
                }

                var paid = self.totals.rawPaidToDate();
                if (paid > 0) {
                    total -= paid;
                }

                return formatMoney(total, self.client().currency_id());
            });

            self.onDragged = function (item) {
                refreshPDF();
            }
        }

        function ClientModel(data) {
            var self = this;
            self.public_id = ko.observable(0);
            self.name = ko.observable('');
            self.id_number = ko.observable('');
            self.vat_number = ko.observable('');
            self.work_phone = ko.observable('');
            self.custom_value1 = ko.observable('');
            self.custom_value2 = ko.observable('');
            self.private_notes = ko.observable('');
            self.address1 = ko.observable('');
            self.address2 = ko.observable('');
            self.city = ko.observable('');
            self.state = ko.observable('');
            self.postal_code = ko.observable('');
            self.country_id = ko.observable('');
            self.size_id = ko.observable('');
            self.industry_id = ko.observable('');
            self.currency_id = ko.observable('');
            self.website = ko.observable('');
            self.payment_terms = ko.observable(0);
            self.contacts = ko.observableArray();

            self.mapping = {
                'contacts': {
                    create: function (options) {
                        var model = new ContactModel(options.data);
                        model.send_invoice(options.data.send_invoice == '1');
                        return model;
                    }
                }
            }
            //return client details - with refreshing
            self.vat_number.display = ko.computed(function () {
                var str = '';

                if(self.id_number() != ''){
                    str += '{{trans('texts.id_number')}} : ' + self.id_number() + '<br/>';
                }
                if(self.vat_number() != ''){
                    str += '{{trans('texts.vat_number')}} : ' + self.vat_number() + '<br/>';
                }

                str += '<h5>{{trans('texts.address')}}</h5>'
                str += self.address1() + '  ' + self.address2() + '<br/>';
                str += self.postal_code() + ' , ' + self.city() + '<br/>';
                return str;
            });


            self.showContact = function (elem) {
                if (elem.nodeType === 1) $(elem).hide().slideDown()
            }
            self.hideContact = function (elem) {
                if (elem.nodeType === 1) $(elem).slideUp(function () {
                    $(elem).remove();
                })
            }

            self.addContact = function () {
                var contact = new ContactModel();
                contact.send_invoice(true);
                self.contacts.push(contact);
                return false;
            }

            self.removeContact = function () {
                self.contacts.remove(this);
            }

            self.name.display = ko.computed(function () {
                if (self.name()) {
                    return self.name();
                }
                if (self.contacts().length == 0) return;
                var contact = self.contacts()[0];
                if (contact.first_name() || contact.last_name()) {
                    return contact.first_name() + ' ' + contact.last_name();
                } else {
                    return contact.email();
                }
            });

            self.name.placeholder = ko.computed(function () {
                if (self.contacts().length == 0) return '';
                var contact = self.contacts()[0];
                if (contact.first_name() || contact.last_name()) {
                    return contact.first_name() + ' ' + contact.last_name();
                } else {
                    return contact.email();
                }
            });

            if (data) {
                ko.mapping.fromJS(data, {}, this);
            } else {
                self.addContact();
            }
        }

        function ContactModel(data) {
            var self = this;
            self.public_id = ko.observable('');
            self.first_name = ko.observable('');
            self.last_name = ko.observable('');
            self.email = ko.observable('');
            self.phone = ko.observable('');
            self.send_invoice = ko.observable(false);
            self.invitation_link = ko.observable('');

            if (data) {
                ko.mapping.fromJS(data, {}, this);
            }

            self.displayName = ko.computed(function() {
                var str = '';
                if (self.first_name() || self.last_name()) {
                    str += self.first_name() + ' ' + self.last_name() + '\n';
                }
                if (self.email()) {
                    str += self.email() + '\n';
                }

                return str;
            });

            self.email.display = ko.computed(function() {
                var str = '';
                if (self.first_name() || self.last_name()) {
                    str += self.first_name() + ' ' + self.last_name() + '<br/>';
                }
                if (self.email()) {
                    str += self.email() + '<br/>';
                }

                @if (Utils::isConfirmed())
                if (self.invitation_link()) {
                    str += '<a href="' + self.invitation_link() + '" target="_blank">{{ trans('texts.view_as_recipient') }}</a>';
                }
                @endif

                return str;
            });

            {{--self.email.display = ko.computed(function () {--}}
                {{--var str = '';--}}
                {{--if (self.first_name() || self.last_name()) {--}}
                    {{--str += self.first_name() + ' ' + self.last_name() + '<br/>';--}}
                {{--}--}}
                {{--str += "<i class='fa fa-envelope' style='width: 20px'></i>" + self.email();--}}

                {{--@if (Utils::isConfirmed())--}}
                {{--if (self.invitation_link()) {--}}
                    {{--str += '<br/><a href="' + self.invitation_link() + '" target="_blank"><i class="fa fa-file-pdf-o" style="width: 20px"></i>{{ trans('texts.view_as_recipient') }}</a>';--}}
                {{--}--}}
                {{--@endif--}}

                {{--return str;--}}
            {{--});--}}

        }

        function TaxRateModel(data) {
            var self = this;
            self.public_id = ko.observable('');
            self.rate = ko.observable(0);
            self.name = ko.observable('');
            self.is_deleted = ko.observable(false);
            self.is_blank = ko.observable(false);
            self.actionsVisible = ko.observable(false);

            if (data) {
                ko.mapping.fromJS(data, {}, this);
            }

            this.prettyRate = ko.computed({
                read: function () {
                    return this.rate() ? this.rate() : '';
                },
                write: function (value) {
                    this.rate(value);
                },
                owner: this
            });


            self.displayName = ko.computed({
                read: function () {
                    var name = self.name() ? self.name() : '';
                    var rate = self.rate() ? parseFloat(self.rate()) + '% ' : '';
                    return rate + name;
                },
                write: function (value) {
                    // do nothing
                },
                owner: this
            });

            self.hideActions = function () {
                self.actionsVisible(false);
            }

            self.showActions = function () {
                self.actionsVisible(true);
            }

            self.isEmpty = function () {
                return !self.rate() && !self.name();
            }
        }

        function ItemModel(data) {
            var self = this;
            this.product_key = ko.observable('');
            this.notes = ko.observable('');
            this.cost = ko.observable(0);
            this.qty = ko.observable(0);
            self.tax_name = ko.observable('');
            self.tax_rate = ko.observable(0);
            this.actionsVisible = ko.observable(false);

            self._tax = ko.observable();
            this.tax = ko.computed({
                read: function () {
                    return self._tax();
                },
                write: function (value) {
                    self._tax(value);
                    self.tax_name(value.name());
                    self.tax_rate(value.rate());
                }
            })

            this.prettyQty = ko.computed({
                read: function () {
                    return OFFLEX.parseFloat(this.qty()) ? OFFLEX.parseFloat(this.qty()) : '';
                },
                write: function (value) {
                    this.qty(value);
                },
                owner: this
            });

            this.prettyCost = ko.computed({
                read: function () {
                    return this.cost() ? this.cost() : '';
                },
                write: function (value) {
                    this.cost(value);
                },
                owner: this
            });

            self.mapping = {
                'tax': {
                    create: function (options) {
                        return new TaxRateModel(options.data);
                    }
                }
            }

            if (data) {
                ko.mapping.fromJS(data, self.mapping, this);
                //if (this.cost()) this.cost(formatMoney(this.cost(), model ? model.invoice().currency_id() : 1, true));
            }

            self.wrapped_notes = ko.computed({
                read: function () {
                    return this.notes();
                },
                write: function (value) {
                    value = wordWrapText(value, 235);
                    self.notes(value);
                    onItemChange();
                },
                owner: this
            });

            this.totals = ko.observable();

            this.totals.rawTotal = ko.computed(function () {
                var cost = roundToTwo(OFFLEX.parseFloat(self.cost()));
                var qty = roundToTwo(OFFLEX.parseFloat(self.qty()));
                var taxRate = OFFLEX.parseFloat(self.tax_rate());
                var value = cost * qty;
                if (taxRate > 0) {
                    value += value * (taxRate / 100);
                }
                return value ? roundToTwo(value) : '';
            });

            this.totals.total = ko.computed(function () {
                var total = self.totals.rawTotal();
                if (window.hasOwnProperty('model') && model.invoice && model.invoice() && model.invoice().client()) {
                    return total ? formatMoney(total, model.invoice().client().currency_id()) : '';
                } else {
                    return total ? formatMoney(total, 1) : '';
                }
            });

            this.hideActions = function () {
                this.actionsVisible(false);
            }

            this.showActions = function () {
                this.actionsVisible(true);
            }

            this.isEmpty = function () {
                return !self.product_key() && !self.notes() && !self.cost() && (!self.qty() || {{ $account->hide_quantity ? 'true' : 'false' }});
            }

            this.onSelect = function () {
            }
        }

        function onItemChange() {
            var hasEmpty = false;
            for (var i = 0; i < model.invoice().invoice_items().length; i++) {
                var item = model.invoice().invoice_items()[i];
                if (item.isEmpty()) {
                    hasEmpty = true;
                }
            }

            if (!hasEmpty) {
                model.invoice().addItem();
            }

            $('.word-wrap').each(function (index, input) {
                $(input).height($(input).val().split('\n').length * 20);
            });
        }

        function onTaxRateChange() {
            var emptyCount = 0;

            for (var i = 0; i < model.tax_rates().length; i++) {
                var taxRate = model.tax_rates()[i];
                if (taxRate.isEmpty()) {
                    emptyCount++;
                }
            }

            for (var i = 0; i < 2 - emptyCount; i++) {
                model.addTaxRate();
            }
        }

        function setEmailEnabled() {
            if ($('#recurring').prop('checked')) {
                $('#email_button').attr('disabled', true);
            } else {
                $('#email_button').removeAttr('disabled');
            }
        }

        var products = {{ $products }};
        var clients = {{ $clients }};

        var clientMap = {};
        var $clientSelect = $('select#client');
        var invoiceDesigns = {{ $invoiceDesigns }};

        for (var i = 0; i < clients.length; i++) {
            var client = clients[i];
            for (var j = 0; j < client.contacts.length; j++) {
                var contact = client.contacts[j];
                if (contact.is_primary) {
                    contact.send_invoice = true;
                }
            }
            clientMap[client.public_id] = client;
            $clientSelect.append(new Option(getClientDisplayName(client), client.public_id));
        }

        @if ($data)
        window.model = new ViewModel({{ $data }});
        @else
            window.model = new ViewModel();
        model.addTaxRate();
        @foreach ($taxRates as $taxRate)
        model.addTaxRate({{ $taxRate }});
        @endforeach
        @if ($invoice)
        var invoice = {{ $invoice }};
        ko.mapping.fromJS(invoice, model.invoice().mapping, model.invoice);
        if (model.invoice().is_recurring() === '0') {
            model.invoice().is_recurring(false);
        }
        var invitationContactIds = {{ json_encode($invitationContactIds) }};
        var client = clientMap[invoice.client.public_id];
        if (client) { // in case it's deleted
            for (var i = 0; i < client.contacts.length; i++) {
                var contact = client.contacts[i];
                contact.send_invoice = invitationContactIds.indexOf(contact.public_id) >= 0;
            }
        }
        model.invoice().addItem();
        //model.addTaxRate();
        @else
            // TODO: Add the first tax rate for new invoices by adding a new db field to the tax codes types to set the default
        //if(model.invoice_taxes() && model.tax_rates().length > 2) {
        //    var tax = model.tax_rates()[1];
        //    model.invoice().tax(tax);
        //}
        model.invoice().custom_taxes1({{ $account->custom_invoice_taxes1 ? 'true' : 'false' }});
        model.invoice().custom_taxes2({{ $account->custom_invoice_taxes2 ? 'true' : 'false' }});
        @endif
    @endif

    model.invoice().tax(model.getTaxRate(model.invoice().tax_name(), model.invoice().tax_rate()));
        for (var i = 0; i < model.invoice().invoice_items().length; i++) {
            var item = model.invoice().invoice_items()[i];
            item.tax(model.getTaxRate(item.tax_name(), item.tax_rate()));
            item.cost(OFFLEX.parseFloat(item.cost()) != 0 ? roundToTwo(item.cost(), true) : '');
        }
        onTaxRateChange();

        // display blank instead of '0'
        if (!OFFLEX.parseFloat(model.invoice().discount())) model.invoice().discount('');
        if (!model.invoice().custom_value1()) model.invoice().custom_value1('');
        if (!model.invoice().custom_value2()) model.invoice().custom_value2('');

        ko.applyBindings(model);
        onItemChange();

    </script>

@stop