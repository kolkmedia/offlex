<script type="text/javascript">

  var currencies = {{ Currency::remember(120)->get(); }};
  var currencyMap = {};
  for (var i=0; i<currencies.length; i++) {
    var currency = currencies[i];
    currencyMap[currency.id] = currency;
  }
  var OFFLEX = OFFLEX || {};
  @if (Auth::check())
  	OFFLEX.primaryColor = "{{ Auth::user()->account->primary_color }}";
  	OFFLEX.secondaryColor = "{{ Auth::user()->account->secondary_color }}";
    OFFLEX.fontSize = 12; //{{ Auth::user()->account->font_size ?: DEFAULT_FONT_SIZE }};
  @endif
  OFFLEX.parseFloat = function(str) {
    if (!str) return '';
    str = (str+'').replace(/[^0-9\.\-]/g, '');
    return window.parseFloat(str);
  }
  function formatMoney(value, currency_id, hide_symbol) {
    value = OFFLEX.parseFloat(value);
    if (!currency_id) currency_id = {{ Session::get(SESSION_CURRENCY, DEFAULT_CURRENCY); }};
    var currency = currencyMap[currency_id];
    return accounting.formatMoney(value, hide_symbol ? '' : currency.symbol, currency.precision, currency.thousand_separator, currency.decimal_separator);
  }
  function trackUrl(url) {}
</script>