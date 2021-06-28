@extends('accounts.nav')

@section('content')	
	@parent	

	{{ Former::open()->addClass('col-md-8 col-md-offset-0 warn-on-exit') }}
	{{ Former::populate($account) }}
	{{ Former::populateField('notify_sent', intval(Auth::user()->notify_sent)) }}
	{{ Former::populateField('notify_viewed', intval(Auth::user()->notify_viewed)) }}
	{{ Former::populateField('notify_paid', intval(Auth::user()->notify_paid)) }}

	{{ Former::legend('email_notifications') }}

    <div class="checkbox">
        {{ Former::checkbox('notify_sent', false)->raw() }}
        <label for="notify_sent">{{trans('texts.email_sent')}} </label>
    </div>
    <div class="checkbox">
        {{ Former::checkbox('notify_viewed', false)->raw() }}
        <label for="notify_viewed">{{trans('texts.email_viewed')}} </label>
    </div>
    <div class="checkbox">
        {{ Former::checkbox('notify_paid', false)->raw() }}
        <label for="notify_paid">{{trans('texts.email_paid')}} </label>
    </div>

	{{ Former::legend('custom_messages') }}
    {{ Former::textarea('invoice_terms')->label(trans('texts.default_invoice_terms')) }}
    {{ Former::textarea('invoice_footer')->label(trans('texts.default_invoice_footer')) }}
	{{ Former::textarea('email_footer')->label(trans('texts.default_email_footer')) }} 

	{{ Former::actions( Button::btn_success_info_submit(trans('texts.save'), array('class' => 'pull-right'))) }}
	{{ Former::close() }}

@stop