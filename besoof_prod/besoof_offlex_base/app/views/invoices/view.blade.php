@extends('layouts.template-header')

@section('head')
	@parent

		@include('layouts.includes.include-page-scripts')

		<script src="{{ asset('js/pdf_viewer.js') }}" type="text/javascript"></script>
		<script src="{{ asset('js/compatibility.js') }}" type="text/javascript"></script>
		<script src="{{ asset('js/pdfmake.min.js') }}" type="text/javascript"></script>
		<script src="{{ asset('js/vfs_fonts.js') }}" type="text/javascript"></script>

		<style type="text/css">
			body {
				background-color: #f8f8f8;		
			}
		</style>
@stop

@section('content')
	<div class="container">
		<p>&nbsp;</p>
        <div class="pull-right" style="text-align:right">
        @if ($invoice->is_quote)            
            {{ Button::normal(trans('texts.download_pdf'), array('onclick' => 'onDownloadClick()', 'class' => 'btn-lg')) }}&nbsp;&nbsp;
            @if (!$isConverted)
                {{ Button::success_link(URL::to('approve/' . $invitation->invitation_key), trans('texts.approve'), array('class' => 'btn-lg')) }}
            @endif
		@elseif ($invoice->client->account->isGatewayConfigured() && !$invoice->isPaid() && !$invoice->is_recurring)
			{{ Button::normal(trans('texts.download_pdf'), array('onclick' => 'onDownloadClick()', 'class' => 'btn-lg')) }}&nbsp;&nbsp;
            @if ($hasToken)
                {{ DropdownButton::success_lg(trans('texts.pay_now'), [
                    ['url' => URL::to("payment/{$invitation->invitation_key}?use_token=true&use_paypal=false"), 'label' => trans('texts.use_card_on_file')],
                    ['url' => URL::to("payment/{$invitation->invitation_key}?use_paypal=false"), 'label' => trans('texts.edit_payment_details')]
                ])->addClass('btn-lg') }}
            @elseif ($countGateways == 2)
                {{ DropdownButton::success_lg(trans('texts.pay_now'), [
                    ['url' => URL::to("payment/{$invitation->invitation_key}?use_paypal=true"), 'label' => trans('texts.pay_with_paypal')],
                    ['url' => URL::to("payment/{$invitation->invitation_key}?use_paypal=false"), 'label' => trans('texts.pay_with_card')]
                ])->addClass('btn-lg') }}
            @else
			     {{ Button::success_link(URL::to('payment/' . $invitation->invitation_key), trans('texts.pay_now'), array('class' => 'btn-lg')) }}		
            @endif
		@else 
			{{ Button::success('Download PDF', array('onclick' => 'onDownloadClick()', 'class' => 'btn-lg')) }}			
		@endif
		</div>        

		<div class="clearfix"></div><p>&nbsp;</p>

		@include('invoices.pdf', ['account' => $invoice->client->account])

		<p>&nbsp;</p>
		<p>&nbsp;</p>

	</div>

	<script type="text/javascript">

		window.invoice = {{ $invoice->toJson() }};
		invoice.is_pro = {{ $invoice->client->account->isPro() ? 'true' : 'false' }};
		invoice.is_quote = {{ $invoice->is_quote ? 'true' : 'false' }};
		invoice.contact = {{ $contact->toJson() }};

		function getPDFString(cb) {
			return generatePDF(invoice, invoice.invoice_design.javascript, true, cb);
		}

		$(function() {
			@if (Input::has('phantomjs'))

                doc = getPDFString();
			doc.getDataUrl(function(pdfString) {

				document.write(pdfString);
				document.close();
			});
			@else
                refreshPDF();
			@endif
        });

		function onDownloadClick() {
			var doc = generatePDF(invoice, invoice.invoice_design.javascript, true);
			var fileName = invoice.is_quote ? invoiceLabels.quote : invoiceLabels.invoice;
			doc.save(fileName + '-' + invoice.invoice_number + '.pdf');
		}


	</script>

@stop