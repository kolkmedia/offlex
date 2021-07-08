@extends('accounts.nav')

@section('content') 
  @parent

  {{ Former::open($url)->method($method)
      ->rules(['product_key' => 'required|max:20'])
      ->addClass('col-md-8 col-md-offset-0 warn-on-exit') }}


  {{ Former::legend($title) }}

  @if ($product)
    {{ Former::populate($product) }}
    {{ Former::populateField('cost', number_format($product->cost, 2, '.', '')) }}
  @endif

  {{ Former::text('product_key')->label('texts.product') }}
  {{ Former::textarea('notes')->data_bind("value: wrapped_notes, valueUpdate: 'afterkeydown'") }}
  {{ Former::text('cost') }}

  {{ Former::actions( 
      Button::btn_info_submit(trans('texts.save'), array('class' => 'pull-left')),
      Button::btn_default_link('company/products', trans('texts.cancel'), array('class' => 'pull-right'))
  ) }}

  {{ Former::close() }}

  <script type="text/javascript">

  function ViewModel(data) {
    var self = this;
    @if ($product)
      self.notes = ko.observable(wordWrapText('{{ str_replace(["\r\n","\r","\n"], '\n', addslashes($product->notes)) }}', 300));
    @else
      self.notes = ko.observable('');
    @endif
    
    self.wrapped_notes = ko.computed({
      read: function() {
        return self.notes();
      },
      write: function(value) {
        value = wordWrapText(value, 235);
        self.notes(value);
      },
      owner: this
    });
  }

  window.model = new ViewModel();
  ko.applyBindings(model);  

  </script>

@stop