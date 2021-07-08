@extends('layouts.template-master')

@section('head')
    <?php $css = "/template/css" ?>
    <?php $js = "/template/js"?>
    <?php $corejs = "/js"?>
    <?php $img = "/template/img"?>
    <?php $data = "/template/data"?>
    <?php $ico = "/template/ico"?>
    <?php $plugins = "/template/plugins"?>
    <?php $fonts = "/template/fonts"?>

    <title>Offlex | {{ isset($title) ? $title : ' ' . trans('public.title') }}</title>
    <meta name="description" content="{{ isset($description) ? $description : trans('public.description') }}"></meta>

    <meta charset="utf-8">
    <meta property="og:site_name" content="OFFLEX"></meta>
    <meta property="og:url" content="{{ SITE_URL }}"></meta>
    <meta property="og:title" content="OFFLEX"></meta>
    <meta property="og:image" content="{{ SITE_URL }}/images/social.jpg"></meta>
    <meta property="og:description" content="Simple, Intuitive Invoicing."></meta>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="<?= csrf_token() ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <link href="{{ secure_asset('favicon.png') }}" rel="shortcut icon">

    {{--FONTS--}}
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic,700italic' rel='stylesheet'
          type='text/css'>

    {{-- PLUGIN CSS--}}
    <link href="{{ $plugins}}/pace/pace-theme-flash.css" rel="stylesheet" type="text/css"/>
    <link href="{{ $plugins}}/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{ $plugins}}/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="{{ $plugins}}/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="{{ $plugins}}/bootstrap-select2/select2.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="{{ $plugins}}/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="{{ $plugins}}/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="{{ $plugins}}/mapplic/css/mapplic.css" rel="stylesheet" type="text/css"/>
    <link href="{{ $plugins}}/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css"/>
    <link href="{{ $plugins}}/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css" media="screen">
    <link href="{{ $plugins}}/jquery-metrojs/MetroJs.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="{{ secure_asset('css/bootstrap-combobox.css')}}" rel="stylesheet" type="text/css"/>

    {{--PAGE CSS--}}
    <link href="{{ $css}}/offlex-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="{{$css}}/offlex.css" rel="stylesheet" type="text/css"/>

    <!--[if lte IE 9]>
    <link href="{{ $css}}/css/ie9.css" rel="stylesheet" type="text/css"/>
    <![endif]-->

    <!--[if lt IE 9]>
    <link href="{{ $plugins}}/mapplic/css/mapplic-ie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->

    {{--OFFLEX SPECIFIC--}}
    <script src="{{ secure_asset('offlex.js')}}?no_cache={{ OFFLEX_VERSION }}" type="text/javascript"></script>

    @if (Auth::check())
        @include('layouts.includes.include-page-scripts')
    @endif
@stop

@section('navigation')
    @if (Auth::check() && Request::path() != 'user/reset')
        <nav class="page-sidebar" data-pages="sidebar">
            <!-- BEGIN SIDEBAR MENU TOP TRAY CONTENT-->
            <div class="sidebar-header">
                <a href="{{ URL::to(OFFLEX_WEB_URL) }}">
                    <img src="{{ secure_asset('/logo/offlex_small.png')}}" alt="logo"
                         data-src="{{ secure_asset('/logo/offlex_small.png')}}"
                         data-src-retina="{{ secure_asset('/logo/offlex_small.png')}}" width="90" height="auto">
                </a>

                <div class="sidebar-header-controls">
                    <button type="button" class="btn btn-link visible-lg-inline" data-toggle-pin="sidebar">
                        <i class="fa fs-12"></i>
                    </button>
                </div>
            </div>
            <div class="sidebar-menu">
                <ul class="menu-items">
                    {{ HTML::menu_single_link(('dashboard'),('dashboard'),('m-t-30 open'),('fa fa-dashboard'))}}
                    {{ HTML::menu_list_link(('client'),('fa fa-users'))}}
                    {{ HTML::menu_list_link(('quote'),('fs-14 pg-cupboard')) }}
                    {{ HTML::menu_list_link(('invoice'),('fa fa-file-text'))}}
                    {{ HTML::menu_list_link(('payment'),('pg-credit_card'))}}
                    {{ HTML::menu_list_link(('expense'),('pg-suitcase'))}}
                    {{ HTML::menu_single_link(('overviews'),('overviews'),('open'),('fa fa-calculator'))}}
                    {{ HTML::menu_single_link(('documents'),('documents'),('open'),('fa fa-file'))}}
                </ul>
                <div class="clearfix"></div>
            </div>
        </nav>
    @endif
@stop

@section('navigation-header')
    @if (Auth::check() && Request::path() != 'user/reset')
        <div class="header ">
            <div class="pull-left full-height visible-sm visible-xs">
                <div class="sm-action-bar">
                    <a href="index.html#" class="btn-link toggle-sidebar" data-toggle="sidebar">
                        <span class="icon-set menu-hambuger"></span>
                    </a>
                </div>
            </div>
            <div class=" pull-left sm-table">
                <div class="header-inner">
                    <div class="brand inline">
                        <a href="{{ URL::to(OFFLEX_WEB_URL) }}">
                            <img src="{{ secure_asset('/logo/offlex_large.png')}}" alt="logo"
                                 data-src="{{ secure_asset('/logo/offlex_large.png')}}"
                                 data-src-retina="{{ secure_asset('/logo/offlex_large.png')}}" width="90" height="auto">
                        </a>
                    </div>
                    <ul class="notification-list no-margin hidden-sm hidden-xs b-grey b-l b-r no-style p-l-30 p-r-20">
                        <li class="p-r-15 inline">
                            {{ HTML::icon_link('dashboard', 'icon-set grid-box') }}
                        </li>
                    </ul>
                    @if(! isset($customDesignPage))
                    <a href="index.html#" class="search-link" data-toggle="search"><i
                                class="pg-search"></i>{{ trans('texts.search') }}</a>
                    @endif
                </div>
            </div>
            <div class=" pull-right">
                <div class="visible-lg visible-md m-t-10">
                    <div class="dropdown pull-right">
                        <button class="profile-dropdown-toggle" type="button" data-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                            <div class="pull-left p-r-10 p-t-10 fs-16 font-heading">
                                <span class="semi-bold">{{ Auth::user()->getDisplayName() }}</span>
                            </div>
                        <span class="thumbnail-wrapper d32 circular inline m-t-5">
                            <i class="fa fa-user"></i>
                        </span>
                        </button>
                        <ul class="dropdown-menu profile-dropdown" role="menu">
                            <li>
                                <a href=" {{ HTML::clean_link('company/details') }}">
                                    <i class="pg-suitcase"></i>
                                    {{uctrans('texts.company_details')}}
                                </a>
                            </li>
                            <li>
                                <a href=" {{ HTML::clean_link('company/products') }}">
                                    <i class="pg-bag"></i>
                                    {{uctrans('texts.product_library')}}
                                </a>
                            </li>
                            <li>
                                <a href=" {{ HTML::clean_link('company/notifications') }}">
                                    <i class="pg-note"></i>
                                    {{uctrans('texts.notifications')}}
                                </a>
                            </li>
                            <li>
                                <a href=" {{ HTML::clean_link('company/import_export') }}">
                                    <i class="pg-download"></i>
                                    {{uctrans('texts.import_export')}}
                                </a>
                            </li>
                            <li>
                                <a href=" {{ HTML::clean_link('company/advanced_settings/invoice_settings') }}">
                                    <i class="pg-settings"></i>
                                    {{ uctrans('texts.advanced_settings') . Utils::getProLabel(ACCOUNT_ADVANCED_SETTINGS) }}
                                </a>
                            </li>
                            <li class="bg-master-lighter">
                                <a href="#" class="clearfix" onclick="logout()">
                                <span class="pull-left">
                                    {{trans('texts.logout')}}
                                </span>
                                <span class="pull-right">
                                    <i class="pg-power"></i>
                                </span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    @endif
@stop



@section('body')
    @yield('content')
@stop

@section('footer')
    @if (!Utils::isOfflex())
        <div class="container-fluid container-fixed-lg footer">
            <div class="copyright sm-text-center">
                <p class="small no-margin pull-left sm-pull-reset">
                    <span>
                        <a href="https://besoof.offlex/" target="_blank">offlex</a> - een product van <a
                                href="http://wwww.besoof.com">besoof</a> - alle rechten voorbehouden | <a
                                href="mailto:info@offlex.nl">info@offlex
                            .nl</a> | <a href="mailto:info@besoof.com">info@besoof.com</a>
                    </span>
                </p>

                <div class="clearfix"></div>
            </div>
        </div>
    @endif
@stop

@section('scripts')
    {{--PLUGINS--}}
    <script src="{{ $plugins}}/pace/pace.min.js"></script>
    <script src="{{ $plugins}}/modernizr.custom.js"></script>
    <script src="{{ $plugins}}/jquery-ui/jquery-ui.min.js"></script>
    <script src="{{ $plugins}}/boostrapv3/js/bootstrap.min.js"></script>
    <script src="{{ $plugins}}/jquery/jquery-easy.js"></script>
    <script src="{{ $plugins}}/jquery-unveil/jquery.unveil.min.js"></script>
    <script src="{{ $plugins}}/jquery-bez/jquery.bez.min.js"></script>
    <script src="{{ $plugins}}/jquery-ios-list/jquery.ioslist.min.js"></script>
    <script src="{{ $plugins}}/jquery-actual/jquery.actual.min.js"></script>
    <script src="{{ $plugins}}/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="{{ $plugins}}/bootstrap-select2/select2.min.js"></script>
    <script src="{{ $plugins}}/classie/classie.js"></script>
    <script src="{{ $plugins}}/switchery/js/switchery.min.js"></script>
    <script src="{{ $plugins}}/jquery-datatable/media/js/jquery.dataTables.min.js"></script>
    <script src="{{ $plugins}}/jquery-datatable/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
    <script src="{{ $plugins}}/jquery-datatable/extensions/Bootstrap/jquery-datatable-bootstrap.js"></script>
    <script src="{{ $plugins}}/nvd3/lib/d3.v3.js"></script>
    <script src="{{ $plugins}}/nvd3/nv.d3.min.js"></script>
    <script src="{{ $plugins}}/nvd3/src/utils.js"></script>
    <script src="{{ $plugins}}/nvd3/src/tooltip.js"></script>
    <script src="{{ $plugins}}/nvd3/src/interactiveLayer.js"></script>
    <script src="{{ $plugins}}/nvd3/src/models/axis.js"></script>
    <script src="{{ $plugins}}/nvd3/src/models/line.js"></script>
    <script src="{{ $plugins}}/nvd3/src/models/lineWithFocusChart.js"></script>
    <script src="{{ $plugins}}/mapplic/js/hammer.js"></script>
    <script src="{{ $plugins}}/mapplic/js/jquery.mousewheel.js"></script>
    <script src="{{ $plugins}}/mapplic/js/mapplic.js"></script>
    <script src="{{ $plugins}}/rickshaw/rickshaw.min.js"></script>
    <script src="{{ $plugins}}/jquery-metrojs/MetroJs.min.js"></script>
    <script src="{{ $plugins}}/jquery-sparkline/jquery.sparkline.min.js"></script>
    <script src="{{ $plugins}}/skycons/skycons.js"></script>
    <script src="{{ $plugins}}/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="{{ $plugins}}/boostrap-form-wizard/js/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>

    {{--FORM HELPER--}}
    <script src="{{ $plugins}}/bootstrap-form-helpers/bootstrap-formhelpers.min.js"></script>

    {{--OFFLEX JS--}}
    <script src="{{ $js}}/offlex.min.js"></script>
    <script src="{{ $js}}/tables.js" type="text/javascript"></script>
    <script src="{{ $js}}/form_layouts.js" type="text/javascript"></script>
    <script src="{{ $js}}/form_wizard.js" type="text/javascript"></script>
    <script src="{{ $js}}/scripts.js" type="text/javascript"></script>

    <!--Page functions-->
    <script type="text/javascript">
        var OFFLEX = OFFLEX || {};
        OFFLEX.isRegistered = {{ Utils::isRegistered() ? 'true' : 'false' }};

        window.onerror = function (e) {
            var message = e.message ? (e.message + ' - ' + e.filename + ': ' + e.lineno) : e;
            try {
                $.ajax({
                    type: 'GET',
                    url: '{{ URL::to('log_error') }}',
                    data: 'error=' + encodeURIComponent(message) + '&url=' + encodeURIComponent(window.location)
                });
            } catch (err) {
            }
            return false;
        }

        @if (Auth::check())
        /* Set the defaults for DataTables initialisation */
        $.extend(true, $.fn.dataTable.defaults, {
            "bSortClasses": false,
            "sDom": "t<'row-fluid'<'span6'i><'span6'p>>",
            "sPaginationType": "bootstrap",
            "bInfo": true,
            "oLanguage": {
                'sEmptyTable': "{{ trans('texts.empty_table') }}",
                'sLengthMenu': '_MENU_',
                'sSearch': ''
            }
        });
        @endif

        @if (Auth::check())
        function isStorageSupported() {
            try {
                return 'localStorage' in window && window['localStorage'] !== null;
            } catch (e) {
                return false;
            }
        }
        @endif

        @if (!Auth::check() || !Auth::user()->registered)
        function validateSignUp(showError) {
            var isFormValid = true;
            $(['first_name', 'last_name', 'email', 'password']).each(function (i, field) {
                var $input = $('form.signUpForm #new_' + field),
                        val = $.trim($input.val());
                var isValid = val && val.length >= (field == 'password' ? 6 : 1);
                if (isValid && field == 'email') {
                    isValid = isValidEmailAddress(val);
                }
                if (isValid) {
                    $input.closest('div.form-group').removeClass('has-error').addClass('has-success');
                } else {
                    isFormValid = false;
                    $input.closest('div.form-group').removeClass('has-success');
                    if (showError) {
                        $input.closest('div.form-group').addClass('has-error');
                    }
                }
            });

            if (!$('#terms_checkbox').is(':checked')) {
                isFormValid = false;
            }

            $('#saveSignUpButton').prop('disabled', !isFormValid);

            return isFormValid;
        }

        function validateServerSignUp() {
            if (!validateSignUp(true)) {
                return;
            }

            $('#signUpDiv, #signUpFooter').hide();
            $('#working').show();

            $.ajax({
                type: 'POST',
                url: '{{ URL::to('signup/validate') }}',
                data: 'email=' + $('form.signUpForm #new_email').val(),
                success: function (result) {
                    if (result == 'available') {
                        submitSignUp();
                    } else {
                        $('#errorTaken').show();
                        $('form.signUpForm #new_email').closest('div.form-group').removeClass('has-success').addClass('has-error');
                        $('#signUpDiv, #signUpFooter').show();
                        $('#working').hide();
                    }
                }
            });
        }

        function submitSignUp() {
            $.ajax({
                type: 'POST',
                url: '{{ URL::to('signup/submit') }}',
                data: 'new_email=' + encodeURIComponent($('form.signUpForm #new_email').val()) +
                '&new_password=' + encodeURIComponent($('form.signUpForm #new_password').val()) +
                '&new_first_name=' + encodeURIComponent($('form.signUpForm #new_first_name').val()) +
                '&new_last_name=' + encodeURIComponent($('form.signUpForm #new_last_name').val()) +
                '&go_pro=' + $('#go_pro').val(),
                success: function (result) {
                    if (result) {
                        localStorage.setItem('guest_key', '');
                        trackUrl('/signed_up');
                        OFFLEX.isRegistered = true;
                        $('#signUpButton').hide();
                        $('#myAccountButton').html(result);
                    }
                    $('#signUpSuccessDiv, #signUpFooter, #closeSignUpButton').show();
                    $('#working, #saveSignUpButton').hide();
                }
            });
        }

        function checkForEnter(event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                validateServerSignUp();
                return false;
            }
        }
        @endif

        @if (Auth::check())
        function logout(force) {
            if (force) {
                OFFLEX.formIsChanged = false;
            }
            if (force || OFFLEX.isRegistered) {
                window.location = '{{ URL::to('logout') }}';
            } else {
                $('#logoutModal').modal('show');
            }
        }
        @endif

        function showSignUp() {
            $('#signUpModal').modal('show');
        }

        @if (Auth::check())
        function buyProduct(affiliateKey, productId) {
            window.open('{{ Utils::isOfflexDev() ? '' : OFFLEX_APP_URL }}/license?affiliate_key=' + affiliateKey + '&product_id=' + productId + '&return_url=' + window.location);
        }
                @endif

                @if (Auth::check() && !Auth::user()->isPro())
                var proPlanFeature = false;
        function showProPlan(feature) {
            proPlanFeature = feature;
            $('#proPlanModal').modal('show');
            trackUrl('/view_pro_plan/' + feature);
        }

        function submitProPlan() {
            trackUrl('/submit_pro_plan/' + proPlanFeature);
            if (OFFLEX.isRegistered) {
                $('#proPlanDiv, #proPlanFooter').hide();
                $('#proPlanWorking').show();

                $.ajax({
                    type: 'POST',
                    url: '{{ URL::to('account/go_pro') }}',
                    success: function (result) {
                        OFFLEX.formIsChanged = false;
                        window.location = '{{ Utils::isOfflexDev() ? '' : OFFLEX_APP_URL }}/view/' + result;
                    }
                });
            } else {
                $('#proPlanModal').modal('hide');
                $('#go_pro').val('true');
                showSignUp();
            }
        }
        @endif

        function hideMessage() {
            $('.alert-info').fadeOut();
            $.get('/hide_message', function (response) {
                console.log('Reponse: %s', response);
            });
        }


        $(function () {
            @if (Auth::check())
            $('#search').focus(function () {
                        if (!window.hasOwnProperty('searchData')) {
                            $.get('{{ URL::route('getSearchData') }}', function (data) {
                                window.searchData = true;
                                var datasets = [];
                                for (var type in data) {
                                    if (!data.hasOwnProperty(type)) continue;
                                    datasets.push({
                                        name: type,
                                        header: '&nbsp;<b>' + type + '</b>',
                                        local: data[type]
                                    });
                                }
                                if (datasets.length == 0) {
                                    return;
                                }
                                $('#search').typeahead(datasets).on('typeahead:selected', function (element, datum, name) {
                                    var type = name == 'Contacts' ? 'clients' : name.toLowerCase();
                                    window.location = '{{ URL::to('/') }}' + '/' + type + '/' + datum.public_id;
                                }).focus().typeahead('setQuery', $('#search').val());
                            });
                        }
                    });
            @endif

            @if (Auth::check())
            if (isStorageSupported()) {
                @if (Auth::check() && !Auth::user()->registered)
                localStorage.setItem('guest_key', '{{ Auth::user()->password }}');
                @endif



            }
            @endif

            @if (!Auth::check() || !Auth::user()->registered)
            validateSignUp();
            $('#signUpModal').on('shown.bs.modal', function () {
                trackUrl('/view_sign_up');
                $(['first_name', 'last_name', 'email', 'password']).each(function (i, field) {
                    var $input = $('form.signUpForm #new_' + field);
                    if (!$input.val()) {
                        $input.focus();
                        return false;
                    }
                });
            })
            @endif

            @if (Auth::check() && !Utils::isOfflex() && !Auth::user()->registered)
            $('#closeSignUpButton').hide();
            showSignUp();
            @elseif(Session::get('sign_up') || Input::get('sign_up'))
            showSignUp();
            @endif

            @yield('onReady')



        });

    </script>
@stop

@section ('search')
    @if (Auth::check())
        <div class="overlay hide" data-pages="search">
            <div class="overlay-content has-results m-t-20">
                <div class="container-fluid">
                    <img class="overlay-brand" src="{{ secure_asset('/logo/offlex_large.png')}}" alt="logo"
                         data-src="{{ secure_asset('/logo/offlex_large.png')}}"
                         data-src-retina="{{ secure_asset('/logo/offlex_large.png')}}" width="90" height="auto">
                    <a href="#" class="close-icon-light overlay-close text-black fs-16">
                        <i class="pg-close"></i>
                    </a>
                </div>
                <div class="container-fluid">
                    <input id="search" class="no-border overlay-search bg-transparent"
                           placeholder="{{ trans('texts.search') }}" spellcheck="false">
                </div>
            </div>
        </div>
    @endif
@stop

@section ('modals')
    @if (!Auth::check() || !Auth::user()->registered)
        <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="signUpModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">{{ trans('texts.sign_up') }}</h4>
                    </div>

                    <div style="background-color: #fff; padding-right:20px" id="signUpDiv" onkeyup="validateSignUp()"
                         onclick="validateSignUp()" onkeydown="checkForEnter(event)">
                        <br/>

                        {{ Former::open('signup/submit')->addClass('signUpForm') }}

                        @if (Auth::check())
                            {{ Former::populateField('new_first_name', Auth::user()->first_name); }}
                            {{ Former::populateField('new_last_name', Auth::user()->last_name); }}
                            {{ Former::populateField('new_email', Auth::user()->email); }}
                        @endif

                        <div style="display:none">
                            {{ Former::text('path')->value(Request::path()) }}
                            {{ Former::text('go_pro') }}
                        </div>

                        {{ Former::text('new_first_name')->label(trans('texts.first_name')) }}
                        {{ Former::text('new_last_name')->label(trans('texts.last_name')) }}
                        {{ Former::text('new_email')->label(trans('texts.email')) }}
                        {{ Former::password('new_password')->label(trans('texts.password')) }}
                        {{ Former::checkbox('terms_checkbox')->label(' ')->text(trans('texts.agree_to_terms', ['terms' => '<a href="'.URL::to('terms').'" target="_blank">'.trans('texts.terms_of_service').'</a>'])) }}
                        {{ Former::close() }}

                        <center>
                            <div id="errorTaken" style="display:none">&nbsp;<br/>{{ trans('texts.email_taken') }}</div>
                        </center>
                        <br/>

                    </div>

                    <div style="padding-left:40px;padding-right:40px;display:none;min-height:130px" id="working">
                        <h3>{{ trans('texts.working') }}...</h3>

                        <div class="progress progress-striped active">
                            <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 100%"></div>
                        </div>
                    </div>

                    <div style="background-color: #fff; padding-right:20px;padding-left:20px; display:none"
                         id="signUpSuccessDiv">
                        <br/>

                        <h3>{{ trans('texts.success') }}</h3>
                        @if (Utils::isOfflex())
                            {{ trans('texts.success_message') }}
                        @endif
                        <br/>&nbsp;
                    </div>

                    <div class="modal-footer" id="signUpFooter" style="margin-top: 0px">
                        <button type="button" class="btn btn-default" id="closeSignUpButton"
                                data-dismiss="modal">{{ trans('texts.close') }} <i
                                    class="glyphicon glyphicon-remove-circle"></i></button>
                        <button type="button" class="btn btn-primary" id="saveSignUpButton"
                                onclick="validateServerSignUp()" disabled>{{ trans('texts.save') }} <i
                                    class="glyphicon glyphicon-floppy-disk"></i></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">{{ trans('texts.logout') }}</h4>
                    </div>

                    <div class="container">
                        <h3>{{ trans('texts.are_you_sure') }}</h3>

                        <p>{{ trans('texts.erase_data') }}</p>
                    </div>

                    <div class="modal-footer" id="signUpFooter">
                        <button type="button" class="btn btn-default"
                                data-dismiss="modal">{{ trans('texts.cancel') }}</button>
                        <button type="button" class="btn btn-primary"
                                onclick="logout(true)">{{ trans('texts.logout') }}</button>
                    </div>
                </div>
            </div>
        </div>
    @endif
@stop