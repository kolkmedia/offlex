<!DOCTYPE html>
<html lang="en">
<head>
    @yield('head')
</head>

<body class="fixed-header">

@if (Auth::check() && Request::path() != 'user/reset')

    @if (!isset($viewPage))
        @yield('navigation')
    @endif

    <div class="page-container">
        @yield('navigation-header')
        <div class="page-content-wrapper">
            @if(Request::path() === 'dashboard')
                <div class="content sm-gutter">
                    <div class="container-fluid padding-25 sm-padding-10">
                        @yield('body')
                    </div>
                </div>
            @elseif(isset($detailPage))
                <div class="content">
                @if (!isset($showBreadcrumbs) || $showBreadcrumbs)
                        <div class="jumbotron" data-pages="parallax">
                            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                                <div class="inner">
                                    {{ HTML::breadcrumbs() }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @yield('body')
                </div>
            @elseif(isset($settingsPage))
                <div class="content">
                        <div class="jumbotron" data-pages="parallax">
                            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                                <div class="inner">
                                    @if (!isset($showBreadcrumbs) || $showBreadcrumbs)
                                    {{ HTML::breadcrumbs() }}
                                    @endif
                                </div>
                            </div>
                        </div>
                    <div class="container-fluid container-fixed-lg">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="invoice padding-50 sm-padding-10">
                                    @yield('body')
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @elseif(isset($listControlPage))
            		@yield('body')
            @else
                <div class="content">
                    @if ((!isset($showBreadcrumbs) || $showBreadcrumbs))
                        <div class="jumbotron" data-pages="parallax">
                            <div class="container-fluid container-fixed-lg sm-p-l-20 sm-p-r-20">
                                <div class="inner">
                                    {{ HTML::breadcrumbs() }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <div class="container-fluid container-fixed-lg bg-white">
                        @yield('body')
                    </div>
                </div>
            @endif
            @yield('modals')
        </div>
        @yield('footer')
    </div>

    @if(! isset($customDesignPage))
        @yield('search')
    @endif
@elseif(isset($viewPage))
    <div class="page-container">
        @yield('navigation-header')
        <div class="content">
            @yield('body')
        </div>
    </div>
@else
    <div class="login-wrapper">
        <div class="bg-pic">
            @yield('bg')
        </div>
        <div class="login-container bg-white">
            @yield('body')
        </div>
    </div>
@endif
@if (Session::has('message'))
    <div class="pgn-wrapper" data-position="top-right">
        <div class="pgn pgn-flip">
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span>
                    <span class="sr-only">Close</span></button>
                <span>{{ Session::get('message') }}</span></div>
        </div>
    </div>
@endif
@if (Session::has('error'))
    <div class="pgn-wrapper" data-position="top-right">
        <div class="pgn pgn-flip">
            <div class="alert alert-error">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span>
                    <span class="sr-only">Close</span></button>
                <span>{{ Session::get('error') }}</span></div>
        </div>
    </div>
@endif
@yield('scripts')

</body>
</html>