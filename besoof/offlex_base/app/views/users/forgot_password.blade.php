@extends('layouts.template-header')

@section('content')
    <div class="login-container bg-white">
        <div class="p-l-50 m-l-20 p-r-50 m-r-20 p-t-50 m-t-30 sm-p-l-15 sm-p-r-15 sm-p-t-40">
            <img class="overlay-brand" src="{{ asset('/logo/offlex_large.png')}}" alt="logo"
                 data-src="{{ asset('/logo/offlex_large.png')}}"
                 data-src-retina="{{ asset('/logo/offlex_large.png')}}" width="90" height="auto">

            <p class="p-t-35">{{ trans('texts.password_recovery') }}</p>
            {{ Former::open('forgot_password')->rules(['email' => 'required|email'])->addClass('p-t-15') }}

            <div class="form-group form-group-default required" aria-required="true">
                <label>{{trans('texts.email_address')}}</label>
                <div class="controls">
                    {{ Former::text('email')->placeholder(trans('texts.email_address'))->raw() }}
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    @if (Session::has('warning'))
                        <div class="alert alert-warning" role="alert">
                            <button class="close" data-dismiss="alert"></button>
                            {{ Session::get('warning') }}
                        </div>
                    @endif

                    @if (Session::has('message'))
                        <div class="alert alert-info" role="alert">
                            <button class="close" data-dismiss="alert"></button>
                            {{ Session::get('message') }}
                        </div>
                    @endif

                    @if (Session::has('error'))
                        <div class="alert alert-danger" role="alert">
                            <button class="close" data-dismiss="alert"></button>
                            {{ Session::get('error') }}
                        </div>
                    @endif
                </div>
            </div>
            {{ Button::success_submit(trans('texts.send_email'), array('class' => 'btn btn-complete btn-cons m-t-10'))->block() }}
            {{ Former::close() }}

            <a href="{{ URL::previous() }}" class="btn btn-info btn-cons m-t-10">Terug</a>

        </div>
    </div>
@stop

@section('bg')
    <video autoplay="true" preload="always" class="lazy">
        <source src="{{asset('/template/video/video.webm')}}" type="video/webm">
        <source src="{{asset('/template/video/video.mp4')}}" type="video/mp4">
    </video>
    <div class="bg-caption pull-bottom sm-pull-bottom text-white p-l-20 m-b-20">
        <h2 class="text-white">
            <img class="overlay-brand" src="{{ asset('/logo/offlex_large.png')}}" alt="logo"
                 data-src="{{ asset('/logo/offlex_large.png')}}"
                 data-src-retina="{{ asset('/logo/offlex_large.png')}}" width="90" height="auto">

        </h2>

        <p class="small text-bg">
            {{trans('texts.app_title')}}
        </p>
    </div>
@stop