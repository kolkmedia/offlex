@extends('accounts.nav')

@section('head')
	@parent

		<script src="{{ asset('js/pdf_viewer.js') }}" type="text/javascript"></script>
    	<script src="{{ asset('js/compatibility.js') }}" type="text/javascript"></script>

        <link href="{{ asset('css/jsoneditor.min.css') }}" rel="stylesheet" type="text/css">
        <script src="{{ asset('js/jsoneditor.min.js') }}" type="text/javascript"></script>

        <script src="{{ asset('js/pdfmake.min.js') }}" type="text/javascript"></script>
        <script src="{{ asset('js/vfs_fonts.js') }}" type="text/javascript"></script>

      <style type="text/css">

        select.form-control {
            background: #FFFFFF !important;        
            margin-right: 12px;
        }
        table {
            background: #FFFFFF !important;        
        }

      </style>

@stop

@section('content')	
	@parent
	@include('accounts.nav_advanced')

  <div class="row">
    <div class="col-md-6">

      {{ Former::open()->addClass('warn-on-exit') }}      
      {{ Former::populateField('invoice_design_id', $account->invoice_design_id) }}

        <div style="display:none">
            {{ Former::text('custom_design') }}
        </div>
      <div role="tabpanel">
        <ul class="nav nav-tabs" role="tablist" style="border: none">
            <li role="presentation" class="active"><a href="#content" aria-controls="content" role="tab" data-toggle="tab">{{ trans('texts.content') }}</a></li>
            <li role="presentation"><a href="#styles" aria-controls="styles" role="tab" data-toggle="tab">{{ trans('texts.styles') }}</a></li>
            <li role="presentation"><a href="#defaultStyle" aria-controls="defaultStyle" role="tab" data-toggle="tab">{{ trans('texts.defaults') }}</a></li>
            <li role="presentation"><a href="#pageMargins" aria-controls="margins" role="tab" data-toggle="tab">{{ trans('texts.margins') }}</a></li>
            <li role="presentation"><a href="#header" aria-controls="header" role="tab" data-toggle="tab">{{ trans('texts.header') }}</a></li>
            <li role="presentation"><a href="#footer" aria-controls="footer" role="tab" data-toggle="tab">{{ trans('texts.footer') }}</a></li>
        </ul>
    </div>
            <div id="jsoneditor" style="width: 100%; height: 743px;"></div>
            <p>&nbsp;</p>
        <div>
<div>
    <div class="pull-left">
        {{trans('texts.invoice_design_id')}}: {{ Former::select('invoice_design_id')->style('display:inline;width:120px')->fromQuery($invoiceDesigns, 'name', 'id')->class('form-control normal-form-control')->onchange('onSelectChange()')->raw() }}
    </div>
    <div class="pull-right m-l-10">
        {{ Button::btn_primary('', ['onclick' => 'showHelp()'])->append_with_icon('question-sign') }}
    </div>
    <div class="pull-right m-l-10">
        {{ Button::btn_default_link('/company/advanced_settings/invoice_design', trans('texts.cancel'), array('class' => 'pull-right')) }}
    </div>
    <div class="pull-right">
        {{ Former::actions( Button::btn_info_submit(trans('texts.save'),['onclick' => 'submitForm()'])) }}
    </div>
</div>


            {{--{{ Button::btn_info_submit(trans('texts.save'),array('class' => 'pull-left'), ['onclick' => 'submitForm()'])}}--}}

        {{--{{ Button::normal(trans('texts.cancel'))->asLinkTo(URL::to('/company/advanced_settings/invoice_design'))->append_with_icon(Icon::create('remove-circle')) }}--}}
        {{--@if (Auth::user()->isPro())--}}
            {{--{{ Button::success(trans('texts.save'))->withAttributes(['onclick' => 'submitForm()'])->append_with_icon(Icon::create('floppy-disk')) }}--}}
        {{--@endif--}}


        {{--<div class="pull-right">--}}
            {{--{{ Button::success('', ['onclick' => 'showHelp()'])->append_with_icon('question-sign') }}--}}
        {{--</div>--}}
        {{--<div class="pull-right">--}}
            {{--{{ Former::select('invoice_design_id')->style('display:inline;width:120px')->fromQuery($invoiceDesigns, 'name', 'id')->class('form-control normal-form-control')->onchange('onSelectChange()')->raw() }}--}}
        {{--</div>--}}
    </div>

      <script>
      @if (!Auth::user()->isPro())
        $(function() {   
            $('form.warn-on-exit input').prop('disabled', true);
        });
      @endif

        function showHelp() {            
            $('#helpModal').modal('show');   
        }   

      </script> 

      {{ Former::close() }}


    <div class="modal fade" id="helpModal" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="helpModalLabel">{{ trans('texts.help') }}</h4>
          </div>

          <div class="panel-body" style="background-color: #fff">
            {{ trans('texts.customize_help') }}
          </div>

         <div class="modal-footer" style="margin-top: 0px">
            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('texts.close') }}</button>            
         </div>
            
        </div>
      </div>
    </div>



    </div>
    <div class="col-md-6">

      @include('invoices.pdf', ['account' => Auth::user()->account, 'pdfHeight' => 800])

    </div>
  </div>
    <script>
        var invoiceDesigns = {{ $invoiceDesigns }};
        var invoice = {{ json_encode($invoice) }};
        var sections = ['content', 'styles', 'defaultStyle', 'pageMargins', 'header', 'footer'];
        var customDesign = origCustomDesign = {{ $customDesign ?: 'JSON.parse(invoiceDesigns[0].javascript);' }};

        function getPDFString(cb, force) {
            invoice.is_pro = {{ Auth::user()->isPro() ? 'true' : 'false' }};
            invoice.account.hide_quantity = {{ Auth::user()->account->hide_quantity ? 'true' : 'false' }};
            invoice.account.hide_paid_to_date = {{ Auth::user()->account->hide_paid_to_date ? 'true' : 'false' }};
            invoice.invoice_design_id = {{ Auth::user()->account->invoice_design_id }};

            OFFLEX.primaryColor = '{{ Auth::user()->account->primary_color }}';
            OFFLEX.secondaryColor = '{{ Auth::user()->account->secondary_color }}';
            OFFLEX.fontSize = {{ Auth::user()->account->font_size }};

            generatePDF(invoice, getDesignJavascript(), force, cb);
        }

        function getDesignJavascript() {
            var id = $('#invoice_design_id').val();
            if (id == '-1') {
                showMoreDesigns();
                $('#invoice_design_id').val(1);
                return invoiceDesigns[0].javascript;
            } else if (customDesign) {
                return JSON.stringify(customDesign);
            } else {
                return invoiceDesigns[0].javascript;
            }
        }

        function loadEditor(section)
        {
            editorSection = section;
            editor.set(customDesign[section]);

            // the function throws an error if the editor is in code view
            try {
                editor.expandAll();
            } catch(err) {}
        }

        function saveEditor(data)
        {
            setTimeout(function() {
                customDesign[editorSection] = editor.get();
                refreshPDF();
            }, 100)
        }

        function onSelectChange()
        {
            var id = $('#invoice_design_id').val();
            if (parseInt(id)) {
                var design = _.find(invoiceDesigns, function(design){ return design.id == id});
                customDesign = JSON.parse(design.javascript);
            } else {
                customDesign = origCustomDesign;
            }

            loadEditor(editorSection);
            refreshPDF(true);
        }

        function submitForm()
        {
            $('#custom_design').val(JSON.stringify(customDesign));
            $('form.warn-on-exit').submit();
        }

        $(function() {
            refreshPDF(true);

            var container = document.getElementById("jsoneditor");
            var options = {
                mode: 'form',
                modes: ['form', 'code'],
                change: function() {
                    saveEditor();
                }
            };
            window.editor = new JSONEditor(container, options);
            loadEditor('content');

            $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
                var target = $(e.target).attr("href") // activated tab
                target = target.substring(1); // strip leading #
                loadEditor(target);
            });
        });

    </script>
@stop