@extends('accounts.nav')

@section('content')
@parent

{{ Former::open_for_files('company/import_map')->addClass('col-md-9 col-md-offset-0') }}
{{ Former::legend('import_clients') }}
{{ Former::file('file')->label(trans('texts.csv_file')) }}
{{ Former::actions( Button::btn_info_submit(trans('texts.upload')) ) }}
{{ Former::close() }}

{{ Former::open('company/export')->addClass('col-md-9 col-md-offset-0') }}
{{ Former::legend('export_clients') }}
{{ Former::actions( Button::btn_primary_submit(trans('texts.download'))) }}
{{ Former::close() }}

<p>&nbsp;</p>
<p>&nbsp;</p>

{{ Former::open('company/cancel_account')->addClass('col-md-9 col-md-offset-0 cancel-account') }}
{{ Former::legend('cancel_account') }}
{{ Former::actions( Button::btn_danger_button(trans('texts.cancel_account'), ['onclick' => 'showConfirm()'])) }}

<div class="modal fade" id="confirmCancelModal" tabindex="-1" role="dialog" aria-labelledby="confirmCancelModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="min-width:150px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="confirmCancelModalLabel">{{ trans('texts.cancel_account') }}</h4>
      </div>

      <div style="background-color: #fff; padding-left: 16px; padding-right: 16px">
        &nbsp;<p>{{ trans('texts.cancel_account_message') }}</p>&nbsp;
        &nbsp;<p>{{ Former::textarea('reason')->placeholder(trans('texts.reason_for_canceling'))->raw() }}</p>&nbsp;        
      </div>

      <div class="modal-footer" style="margin-top: 0px">
        <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('texts.go_back') }}</button>
        <button type="button" class="btn btn-primary" onclick="confirmCancel()">{{ trans('texts.cancel_account') }}</button>         
      </div>

    </div>
  </div>
</div>

{{ Former::close() }}  


<script type="text/javascript">

  function showConfirm() {
    $('#confirmCancelModal').modal('show'); 
  }

  function confirmCancel() {
    $('form.cancel-account').submit();
  }

</script>

@stop