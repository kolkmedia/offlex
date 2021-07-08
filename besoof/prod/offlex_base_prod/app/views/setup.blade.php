<?php $css = "/template/css" ?>
<?php $js = "/template/js"?>
<?php $img = "/template/img"?>
<?php $data = "/template/data"?>
<?php $ico = "/template/ico"?>
<?php $plugins = "/template/plugins"?>
<?php $fonts = "/template/fonts"?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Offlex | Setup</title>
    <meta charset="utf-8">
    <meta name="csrf-token" content="<?= csrf_token() ?>">
    <script src="{{ asset('offlex.js') }}?no_cache={{ OFFLEX_VERSION }}" type="text/javascript"></script>


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
    <link href="{{ asset('css/bootstrap-combobox.css')}}" rel="stylesheet" type="text/css"/>

    {{--PAGE CSS--}}
    <link href="{{ $css}}/offlex-icons.css" rel="stylesheet" type="text/css">
    <link href="{{ asset('template/css/offlex.css') }}?no_cache={{ OFFLEX_VERSION }}" rel="stylesheet" type="text/css"/>
</head>

<body>
<div class="page-content-wrapper">
    <div class="register-container container-fixed-lg">
        <div class="row row-sm-height">
            <div class="col-sm-6 col-sm-height col-middle bg-white panel">
                <div class="jumbotron panel-body">
                    <a href="{{ URL::to(OFFLEX_WEB_URL) }}" class="pull-right">
                        <img src="{{ asset('/logo/offlex_large.png')}}" alt="logo"
                             data-src="{{ asset('/logo/offlex_small.png')}}"
                             data-src-retina="{{ asset('/logo/offlex_small.png')}}" width="90" height="auto">
                    </a>

                    <h2>Offlex Setup</h2>
                    @if (version_compare(phpversion(), '5.4.0', '<'))
                        <div class="alert alert-warning">Warning: The application requires PHP >= 5.4.0</div>
                    @endif
                    @if (!extension_loaded('fileinfo'))
                        <div class="alert alert-warning">Warning: The <a
                                    href="http://php.net/manual/en/book.fileinfo.php"
                                    target="_blank">fileinfo</a> extension needs to be
                            installed and enabled.
                        </div>
                    @endif
                    Voor vragen <a href="mailto:info@besoof.com" target="_blank">info@besoof.com</a>.
                    <p>
                    <pre>-- Creer een MySQL database en gebruiker</br>
CREATE SCHEMA `offlex`
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'offlex'@'localhost' IDENTIFIED BY 'offlex';
GRANT ALL PRIVILEGES ON `offlex`.* TO 'offlex'@'localhost';
FLUSH PRIVILEGES;</pre>
                    </p>
                </div>

                {{ Former::open()->rules([
                    'app[url]' => 'required',
                    'database[type][host]' => 'required',
                    'database[type][database]' => 'required',
                    'database[type][username]' => 'required',
                    'database[type][password]' => 'required',
                    'first_name' => 'required',
                    'last_name' => 'required',
                    'email' => 'required|email',
                    'password' => 'required',
                    'terms_checkbox' => 'required'
                  ]) }}

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Applicatie instellingen</h3>
                    </div>
                    <div class="panel-body">
                        {{ Former::text('app[url]')->label('URL')->value(Request::root()) }}
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Database Connectie</h3>
                    </div>
                    <div class="panel-body">
                        {{ Former::select('database[default]')->label('Driver')->options(['mysql' => 'MySQL', 'pgsql' => 'PostgreSQL', 'sqlite' => 'SQLite'])->class('form-control normal-form-control') }}
                        {{ Former::text('database[type][host]')->label('Host')->value('') }}
                        {{ Former::text('database[type][database]')->label('Database')->value('offlex') }}
                        {{ Former::text('database[type][username]')->label('Gebruikersnaam')->value('offlex') }}
                        {{ Former::password('database[type][password]')->label('Wachtwoord')->value('offlex') }}
                        {{ Former::actions( Button::btn_info('Test verbinding', ['onclick' => 'testDatabase()']), '&nbsp;&nbsp;<span id="dbTestResult"/>' ) }}
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Email instellingen</h3>
                    </div>
                    <div class="panel-body">
                        {{ Former::select('mail[driver]')->label('Driver')->options(['smtp' => 'SMTP', 'mail' => 'Mail', 'sendmail' => 'Sendmail'])->class('form-control normal-form-control') }}
                        {{ Former::text('mail[host]')->label('Host')->value('') }}
                        {{ Former::text('mail[port]')->label('Port')->value('') }}
                        {{ Former::select('mail[encryption]')->label('Encryptie')->options(['tls' => 'TLS', 'ssl' => 'SSL'])->class('form-control normal-form-control') }}
                        {{ Former::text('mail[from][name]')->label('Afzender') }}
                        {{ Former::text('mail[username]')->label('Email') }}
                        {{ Former::password('mail[password]')->label('Password') }}
                        {{ Former::actions( Button::btn_info('Test email', ['onclick' => 'testMail()']), '&nbsp;&nbsp;<span id="mailTestResult"/>' ) }}
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Gebruiker</h3>
                    </div>
                    <div class="panel-body">
                        {{ Former::text('Voornaam') }}
                        {{ Former::text('Achternaam') }}
                        {{ Former::text('email') }}
                        {{ Former::password('wachtwoord') }}
                    </div>
                </div>

                {{--<div class="checkbox">--}}
                {{--{{ Former::checkbox('terms_checkbox',false)->raw() }}--}}
                {{--<label for="terms_checkbox">{{trans('texts.agree_to_terms', ['terms' => '<a href="'.OFFLEX_APP_URL.'/terms" target="_blank">'.trans('texts.terms_of_service').'</a>'])}} </label>--}}
                {{--</div>--}}
                <div class="pull-right p-b-10">
                    {{ Former::actions( Button::submit_info('Volgende')) }}
                    {{ Former::close() }}
                </div>
            </div>
        </div>

        <script type="text/javascript">

            function testDatabase() {
                $('#dbTestResult').html('Working...').css('color', 'black');
                var data = $("form").serialize() + "&test=db";
                $.post("/setup", data, function (data) {
                    $('#dbTestResult').html(data).css('color', data == 'Success' ? 'green' : 'red');
                });
            }

            function testMail() {
                $('#mailTestResult').html('Working...').css('color', 'black');
                var data = $("form").serialize() + "&test=mail";
                $.post("/setup", data, function (data) {
                    $('#mailTestResult').html(data).css('color', data == 'Sent' ? 'green' : 'red');
                });
            }

            // http://stackoverflow.com/questions/585396/how-to-prevent-enter-keypress-to-submit-a-web-form
            $("form").bind("keypress", function (e) {
                if (e.keyCode == 13) {
                    return false;
                }
            });

        </script>

</body>
</html>