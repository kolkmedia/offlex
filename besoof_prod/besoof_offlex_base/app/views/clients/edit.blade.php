@extends('layouts.template-header')

@section('onReady')
    $('input#name').focus();
@stop

@section('content')
    <div class="container-fluid container-fixed-lg">
        <div class="panel panel-default">
            <div class="panel-body">
                {{ Former::open($url)->addClass('col-md-12 warn-on-exit')->method($method)->rules(array(
                          'email' => 'email|required'
                    )); }}
                <div class="pull-right sm-m-t-20">
                    <h2 class="all-caps hint-text">{{ $title }}</h2>
                </div>
                <div id="rootwizard" class="invoice padding-50 sm-padding-10">

                    @if ($client)
                        {{ Former::populate($client) }}
                    @endif
                    <ul class="nav nav-tabs nav-tabs-fillup">
                        <li class="active">
                            <a data-toggle="tab" href="#{{ trans('texts.organization') }}">
                                <span>{{ trans('texts.organization') }}</span></a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#{{ trans('texts.address') }}">
                                <span>{{ trans('texts.address') }}</span></a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#{{ trans('texts.contacts') }}">
                                <span>{{ trans('texts.contacts') }}</span></a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#last">
                                <span>{{ trans('texts.additional_info') }}</span></a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane padding-20 active slide-left" id="{{ trans('texts.organization') }}">
                            <div class="row">
                                <div class="col-md-6 ">
                                    {{ Former::text('name')->data_bind("attr { placeholder: placeholderName }") }}
                                    {{ Former::text('id_number') }}
                                    {{ Former::text('vat_number') }}
                                    {{ Former::text('website') }}
                                    {{ Former::text('work_phone') }}

                                    @if (Auth::user()->isPro())
                                        @if ($customLabel1)
                                            {{ Former::text('custom_value1')->label($customLabel1) }}
                                        @endif
                                        @if ($customLabel2)
                                            {{ Former::text('custom_value2')->label($customLabel2) }}
                                        @endif
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane padding-20 slide-left" id="{{ trans('texts.address') }}">
                            <div class="row">
                                <div class="col-md-6 ">
                                    {{ Former::text('address1') }}
                                    {{ Former::text('address2') }}
                                    {{ Former::text('city') }}
                                    {{ Former::text('state') }}
                                    {{ Former::text('postal_code') }}
                                    {{ Former::select('country_id')->addOption('','') ->fromQuery($countries, 'name', 'id')->class('full-width')->data_init_plugin("select2")}}
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane padding-20 slide-left" id="{{ trans('texts.contacts') }}">
                            <div class="row">
                                <div class="col-md-6 ">
                                    <div data-bind='template: { foreach: contacts,
                        beforeRemove: hideContact,
                        afterAdd: showContact }'>
                                        {{ Former::hidden('public_id')->data_bind("value: public_id, valueUpdate: 'afterkeydown'") }}
                                        {{ Former::text('first_name')->data_bind("value: first_name, valueUpdate: 'afterkeydown'") }}
                                        {{ Former::text('last_name')->data_bind("value: last_name, valueUpdate: 'afterkeydown'") }}
                                        {{ Former::text('email')->data_bind('value: email, valueUpdate: \'afterkeydown\', attr: {id:\'email\'+$index()}') }}
                                        {{ Former::text('phone')->data_bind("value: phone, valueUpdate: 'afterkeydown'") }}
                                        <div class="form-group">
                                            <div class="col-lg-8 col-lg-offset-4 bold">
                                                <div data-bind="visible: $parent.contacts().length > 1">
                                                    <a class="btn btn-danger btn-cons m-b-10 pull-right" href="#"
                                                       data-bind="click: $parent.removeContact">
                                                        <span>{{trans('texts.remove_contact')}}</span>
                                                    </a>
                                                </div>
                                                <div data-bind="visible: $index() === ($parent.contacts().length - 1)">
                                                    <a class="btn btn-info btn-cons m-b-10 pull-right" href="#"
                                                       onclick="return addContact()">
                                                        <span>{{trans('texts.add_contact')}}</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane padding-20 slide-left" id="last">
                            <div class="row">
                                <div class="col-md-6 ">
                                    {{ Former::select('payment_terms')->addOption('','') ->fromQuery($paymentTerms, 'name', 'num_days') ->class('full-width')->data_init_plugin("select2")}}
                                    {{ Former::select('currency_id')->addOption('','') ->fromQuery($currencies, 'name', 'id')->class('full-width')->data_init_plugin("select2")}}
                                    {{ Former::select('size_id')->addOption('','')->fromQuery($sizes, 'name', 'id') ->class('full-width')->data_init_plugin("select2")}}
                                    {{ Former::select('industry_id')->addOption('','') ->fromQuery($industries, 'name', 'id') ->class('full-width')->data_init_plugin("select2")}}
                                    {{ Former::textarea('private_notes') }}
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6 pull-right padding-20 bg-white">
                        <ul class="pager wizard">
                            <li class="next">
                                <button class="btn btn-complete btn-cons pull-right" type="button">
                                    <span>{{trans('texts.next')}}</span>
                                </button>
                            </li>
                            <li class="next finish hidden">
                                <button class="btn btn-primary btn-cons pull-right"
                                        type="submit">
                                    <span>{{trans('texts.save')}}</span>
                                </button>

                            </li>
                            <li class="previous">
                                <button class="btn btn-default btn-cons pull-right" type="button">
                                    <span>{{trans('texts.previous')}}</span>
                                </button>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6 pull-left padding-20 bg-white">
                        <button class="btn btn-primary btn-cons pull-left" type="submit">
                            <span>{{trans('texts.save')}}</span>
                        </button>
                        <a href="{{URL::to('clients/'. ($client ? $client->public_id : ''))}}"
                           class="btn btn-default btn-cons">
                            {{trans('texts.cancel')}}
                        </a>
                    </div>
                    {{ Former::hidden('data')->data_bind("value: ko.toJSON(model)") }}
                </div>
                {{ Former::close() }}
            </div>
        </div>
    </div>
    <script type="text/javascript">

        function ContactModel(data) {
            var self = this;
            self.public_id = ko.observable('');
            self.first_name = ko.observable('');
            self.last_name = ko.observable('');
            self.email = ko.observable('');
            self.phone = ko.observable('');

            if (data) {
                ko.mapping.fromJS(data, {}, this);
            }
        }

        function ContactsModel(data) {
            var self = this;
            self.contacts = ko.observableArray();

            self.mapping = {
                'contacts': {
                    create: function (options) {
                        return new ContactModel(options.data);
                    }
                }
            }

            if (data) {
                ko.mapping.fromJS(data, self.mapping, this);
            } else {
                self.contacts.push(new ContactModel());
            }

            self.placeholderName = ko.computed(function () {
                if (self.contacts().length == 0) return '';
                var contact = self.contacts()[0];
                if (contact.first_name() || contact.last_name()) {
                    return contact.first_name() + ' ' + contact.last_name();
                } else {
                    return contact.email();
                }
            });
        }

        window.model = new ContactsModel({{ $client }});

        model.showContact = function (elem) {
            if (elem.nodeType === 1) $(elem).hide().slideDown()
        }
        model.hideContact = function (elem) {
            if (elem.nodeType === 1) $(elem).slideUp(function () {
                $(elem).remove();
            })
        }


        ko.applyBindings(model);

        function addContact() {
            model.contacts.push(new ContactModel());
            return false;
        }

        model.removeContact = function () {
            model.contacts.remove(this);
        }


    </script>


@stop
