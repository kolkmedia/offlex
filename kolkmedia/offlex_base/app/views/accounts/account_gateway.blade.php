@extends('accounts.nav')

@section('content')
    @parent
    {{ Former::open($url)->method($method)->rule()->addClass('col-md-8 col-md-offset-0 warn-on-exit') }}
    {{ Former::populate($account) }}

    {{ Former::legend(trans('texts.add_gateway'))}}

    @if ($accountGateway)
        {{ Former::populateField('gateway_id', $accountGateway->gateway_id) }}
        {{ Former::populateField('recommendedGateway_id', $accountGateway->gateway_id) }}
        @if ($config)
            @foreach ($accountGateway->fields as $field => $junk)
                @if (in_array($field, ['solutionType', 'landingPage', 'headerImageUrl', 'brandName']))
                    {{-- do nothing --}}
                @elseif (isset($config->$field))
                    {{ Former::populateField($accountGateway->gateway_id.'_'.$field, $config->$field) }}
                @endif
            @endforeach
        @endif
    @endif

    <div class="row">
        <div class="col-md-6">
            {{ Former::checkboxes('creditCardTypes[]')->label(trans('accepted_creditcards'))->checkboxes($creditCardTypes)->class('creditcard-types checkboxfield')->addGroupClass('checkboxfield m-l-20')}}
        </div>
        <div style="display:{{ $accountGateway ? 'none' : '' }}">
            <div class="col-md-6" style="display:{{ $onlyPayPal ? 'none' : '' }}">
                {{ Former::radios('recommendedGateway_id')->label('Recommended Gateway')->radios($recommendedGateways)->class('recommended-gateway checkboxfield')}}
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12" style="display:{{ $onlyPayPal ? 'none' : '' }}">
            {{ Former::legend(trans('texts.select_gateway'))}}
            {{ Former::select('gateway_id')->addOption('', '')
                ->dataClass('gateway-dropdown')
                ->fromQuery($gateways, 'name', 'id')
                ->onchange('setFieldsShown()')->class('full-width')->data_init_plugin('select2'); }}
        </div>

        @foreach ($gateways as $gateway)

            <div id="gateway_{{ $gateway->id }}_div" class='gateway-fields' style="display: none">
                @foreach ($gateway->fields as $field => $details)

                    @if (in_array($field, ['solutionType', 'landingPage', 'headerImageUrl', 'brandName']))
                        {{-- do nothing --}}
                    @elseif ($field == 'testMode' || $field == 'developerMode')
                        {{-- Former::checkbox($gateway->id.'_'.$field)->label(Utils::toSpaceCase($field))->text('Enable') --}}
                    @elseif ($field == 'username' || $field == 'password')
                        {{ Former::text($gateway->id.'_'.$field)->label('API '. ucfirst(Utils::toSpaceCase($field))) }}
                    @else
                        {{ Former::text($gateway->id.'_'.$field)->label(Utils::toSpaceCase($field)) }}
                    @endif

                @endforeach

                @if ($gateway->getHelp())
                    <div class="form-group">
                        <label class="control-label col-lg-4 col-sm-4"></label>

                        <div class="col-lg-8 col-sm-8 help-block">
                            {{ $gateway->getHelp() }}
                        </div>
                    </div>
                @endif

                @if ($gateway->id == GATEWAY_STRIPE)
                    {{ Former::select('token_billing_type_id')->options($tokenBillingOptions)->help(trans('texts.token_billing_help')) }}
                @endif
            </div>

        @endforeach
    </div>
    <div class="row">
        <div class="clearfix pull-right">
            {{ Former::actions(
                Button::btn_info_submit(trans('texts.save')),
                $countGateways > 0 ? Button::lg_default_link('company/payments', 'Cancel')->append_with_icon('remove-circle') : false
            )}}
        </div>
    </div>

    {{ Former::close() }}
    <script type="text/javascript">

        function setFieldsShown() {
            var recommendedVal = $('input:radio[name=recommendedGateway_id]:checked').val();
            var gatewayVal = $('#gateway_id').val();
            var val = recommendedVal && recommendedVal != 1000000 ? recommendedVal : gatewayVal;

            console.log('recommendedVal: ', recommendedVal);
            console.log('gatewayVal: ', gatewayVal);

            $('.gateway-fields').hide();
            $('#gateway_' + val + '_div').show();

            $('#gateway_id').parent().parent().hide();
            if (!$('input:radio[name=recommendedGateway_id][value!=1000000]:checked').val()) {
                $('.recommended-gateway[value=1000000]').attr('checked', true);
                $('#gateway_id').parent().parent().show();
            }
        }

        function gatewayLink(url) {
            var host = new URL(url).hostname;
            if (host) {
                openUrl(url, '/affiliate/' + host);
            }
        }

        $(document).ready(function () {
            $('.recommended-gateway').change(
                    function () {
                        var recVal = $(this).val();

                        if (recVal == 1000000) {
                            $('#gateway_id').parent().parent().show();
                        }
                        else {
                            $('#gateway_id').parent().parent().hide();
                        }

                        setFieldsShown();
                    }
            );

            $('.recommended-gateway[other != true]').each(function () {
                var contents = $(this).parent().contents();
                contents[contents.length - 1].nodeValue = '';
                $(this).after('<img src="' + $(this).attr('data-imageUrl') + '" /><br />');
                $(this).parent().children().last().after('<a href="#" onclick="gatewayLink(\'' + $(this).attr('data-siteUrl') + '\')" style="padding-left:26px">Create an account</a>');
            });

            // TODO: THIS IS JUST TO SHOW THE IMAGES, STYLE IS SET INLINE STYLE
            $('.creditcard-types').each(function () {
                var contents = $(this).parent().contents();
                contents[contents.length - 1].nodeValue = '';
                $(this).after('<img style="width: 60px; display: inline;" src="' + $(this).attr('data-imageUrl') + '" /><br />');
            });


            setFieldsShown();
            $('.two-column .form-group .col-lg-8').removeClass('col-lg-8');
            $('.two-column .form-group .col-sm-8').removeClass('col-sm-8');
        });

    </script>

@stop