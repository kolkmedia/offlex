@extends('layouts.template-header')


@section('content')
    <div class="login-container bg-white">
        <div class="p-l-50 m-l-20 p-r-50 m-r-20 p-t-50 m-t-30 sm-p-l-15 sm-p-r-15 sm-p-t-40">
            <img class="overlay-brand" src="{{ asset('/logo/offlex_large.png')}}" alt="logo"
                 data-src="{{ asset('/logo/offlex_large.png')}}"
                 data-src-retina="{{ asset('/logo/offlex_large.png')}}" width="90" height="auto">

            <p class="p-t-35">{{ trans('texts.account_login') }}</p>
            {{ Former::open('login')->rules(['login_email' => 'required|email', 'login_password' => 'required'])->addClass('p-t-15 form') }}
            <div class="form-group form-group-default">
                <label>{{trans('texts.email_address')}}</label>

                <div class="controls">
                    {{ Former::text('login_email')->placeholder(trans('texts.email_address'))->raw() }}
                </div>
            </div>
            <div class="form-group form-group-default">
                <label>{{trans('texts.password')}}</label>

                <div class="controls">
                    {{ Former::password('login_password')->placeholder(trans('texts.password'))->raw() }}
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    {{ link_to('forgot_password', trans('texts.forgot_password'),array('class' => 'small')) }}
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    {{ $errors->first('login_email') }}
                    {{ $errors->first('login_password') }}

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
            {{ Button::success_submit(trans('texts.lets_go'), array('class' => 'btn btn-complete btn-cons m-t-10'))->block() }}
            {{ Former::close() }}
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
            Offlex - Het online boekhoud platform.
        </p>
    </div>
@stop