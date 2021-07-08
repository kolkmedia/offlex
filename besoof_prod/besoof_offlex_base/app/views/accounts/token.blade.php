@extends('accounts.nav')

@section('content') 
  @parent
  @include('accounts.nav_advanced')

  {{ Former::open($url)->method($method)->addClass('col-md-4 col-md-offset-1 warn-on-exit')->rules(array(
      'name' => 'required',
  )); }}

  {{ Former::legend($title) }}

  <p>&nbsp;</p>

  @if ($token)
    {{ Former::populate($token) }}    
  @endif

  {{ Former::text('name') }}

  <p>&nbsp;</p>
  
  {{ Former::actions( 
      Button::btn_info_submit(trans('texts.save')),
      Button::btn_default_link('company/advanced_settings/token_management', trans('texts.cancel'))
  ) }}

  {{ Former::close() }}

@stop