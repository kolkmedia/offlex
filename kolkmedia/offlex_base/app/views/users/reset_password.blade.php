@extends('layouts.template-header')

@section('content')
    <div class="login-container bg-white">
        <div class="p-l-50 m-l-20 p-r-50 m-r-20 p-t-50 m-t-30 sm-p-l-15 sm-p-r-15 sm-p-t-40">
            {{ Former::open('user/reset')->addClass('form-signin')->rules(array(
            'password' => 'required',
            'password_confirmation' => 'required',
            )); }}

            <img class="overlay-brand" src="{{ asset('/logo/offlex_large.png')}}" alt="logo"
                 data-src="{{ asset('/logo/offlex_large.png')}}"
                 data-src-retina="{{ asset('/logo/offlex_large.png')}}" width="90" height="auto">

            <p>Offlex | {{ trans('texts.set_password') }}</p>

            <input type="hidden" name="token" value="{{{ $token }}}">

            <div class="form-group form-group-default required" aria-required="true">
                <label>{{trans('texts.password')}}</label>
                <div class="controls">
                    {{ Former::password('password')->placeholder(trans('texts.password'))->raw() }}
                </div>
            </div>

            <div class="form-group form-group-default required" aria-required="true">
                <label>{{trans('texts.confirm_password')}}</label>
                <div class="controls">
                    {{ Former::password('password_confirmation')->placeholder(trans('texts.confirm_password'))->raw() }}
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
            {{ Button::success_submit(trans('texts.save'), array('class' => 'btn btn-complete btn-cons m-t-10'))->block() }}
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
            {{trans('texts.app_title')}}
        </p>
    </div>
@stop