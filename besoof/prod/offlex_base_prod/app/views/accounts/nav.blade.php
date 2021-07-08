@extends('layouts.template-header')

@section('content')
	<ul class="nav nav-tabs nav-tabs-fillup">
  	{{ HTML::nav_link('company/details', 'company_details', 'details')}}
    {{--{{ HTML::nav_link('company/payments', 'online_payments', 'gateways') }}--}}
    {{ HTML::nav_link('company/products', 'product_library', 'products') }}
  	{{ HTML::nav_link('company/notifications', 'notifications', 'notifications') }}
    {{ HTML::nav_link('company/import_export', 'import_export','import_export', 'company/import_map') }}
  	{{ HTML::nav_link('company/advanced_settings/invoice_settings', 'advanced_settings' ,'advanced_settings', '*/advanced_settings/*') }}
  	{{ HTML::nav_link('extra/categories', 'tax_settings' ,'categories', '*/categories/*') }}
	</ul>
@stop
