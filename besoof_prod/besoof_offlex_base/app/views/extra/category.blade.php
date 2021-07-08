@extends('accounts.nav')

@section('content') 
  @parent
@include('extra.nav_advanced')
  {{ Former::open($url)->method($method)
      ->rules(['name' => 'required|max:50'])
      ->addClass('col-md-8 col-md-offset-0 warn-on-exit') }}


  {{ Former::legend($title) }}

  @if ($category)
    {{ Former::populate($category) }}
  @endif

  {{ Former::text('name')->label('texts.category') }}
  {{ Former::textarea('description')->data_bind("value: wrapped_description, valueUpdate: 'afterkeydown'") }}

  {{ Former::actions( 
      Button::btn_info_submit(trans('texts.save'), array('class' => 'pull-left')),
      Button::btn_default_link('extra/categories', trans('texts.cancel'), array('class' => 'pull-right'))
  ) }}

  {{ Former::close() }}

@stop