@extends('accounts.nav')

@section('content') 
  @parent
@include('extra.nav_advanced')
  {{ Former::open($url)->method($method)
      ->rules([
      'name' => 'required|max:50',
      'quarter_date_start' => 'required',
      'quarter_date_end' => 'required|date|date_format:d-m-Y|after:quarter_date_start'
      ])
      ->addClass('col-md-8 col-md-offset-0 warn-on-exit') }}


  {{ Former::legend($title) }}

  @if ($quarter)
    {{ Former::populate($quarter) }}
  @endif

  	{{ Former::text('name')->label('texts.quarter') }}
  	{{ Former::textarea('description')->data_bind("value: wrapped_description, valueUpdate: 'afterkeydown'") }}
	{{ Former::text('quarter_date_start')->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar"></i>') }}
	{{ Former::text('quarter_date_end')->data_date_format(Session::get(SESSION_DATE_PICKER_FORMAT))->append('<i class="glyphicon glyphicon-calendar"></i>') }}
	  {{ Former::actions( 
	      Button::btn_info_submit(trans('texts.save'), array('class' => 'pull-left')),
	      Button::btn_default_link('extra/quarters', trans('texts.cancel'), array('class' => 'pull-right'))
	  ) }}

  {{ Former::close() }}

  <script type="text/javascript">

  $(function () {
      @if ($quarter)
      	$('#quarter_date_start').datepicker('update', '{{ $quarter->quarter_date_start }}')
      	$('#quarter_date_end').datepicker('update', '{{ $quarter->quarter_date_end }}')
      @else
        $('#quarter_date_start').datepicker('update', new Date());
      	$('#quarter_date_end').datepicker('update', new Date());
      @endif


  });

  </script>

@stop