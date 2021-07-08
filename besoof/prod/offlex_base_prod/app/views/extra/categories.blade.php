@extends('accounts.nav')

@section('content')
	@parent
	@include('extra.nav_advanced')

  {{ Former::open('users/delete')->addClass('user-form') }}
  {{ Former::legend('category_management') }}

  <div style="display:none">
    {{ Former::text('userPublicId') }}
  </div>
  {{ Former::close() }}


  <div class="pull-right">  
    @if (Utils::isPro())    
        {{ Button::btn_info_link(URL::to('categories/create'), trans("texts.add_category"), array('class' => 'pull-right'))}}
    @endif

  </div>

    <div class="checkbox table-header-checkbox">
        <input type="checkbox" id="trashed" onclick="setTrashVisible()" {{ Session::get('show_trash:user') ? 'checked' : ''}}/>
    </div>


  {{ Datatable::table()
      ->addColumn(
        trans('texts.name'),
        trans('texts.description'),
        trans('texts.date'),
        trans('texts.action'))
      ->setUrl(url('api/categories/'))
      ->setOptions('sPaginationType', 'bootstrap')
      ->setOptions('bFilter', false)
      ->setOptions('bAutoWidth', false)
      ->setOptions('aoColumns', [[ "sWidth"=> "20%" ], [ "sWidth"=> "45%" ], ["sWidth"=> "20%"], ["sWidth"=> "15%" ]])
      ->setOptions('aoColumnDefs', [['bSortable'=>false, 'aTargets'=>[3]]])
      ->render('datatable') }}

  <script>
  window.onDatatableReady = function() {
    $('tbody tr').mouseover(function() {
      $(this).closest('tr').find('.tr-action').css('visibility','visible');
    }).mouseout(function() {
      $dropdown = $(this).closest('tr').find('.tr-action');
      if (!$dropdown.hasClass('open')) {
        $dropdown.css('visibility','hidden');
      }
    });
  }

  function deleteUser(id) {
    if (!confirm('Weet u het zeker?')) {
      return;
    }

    $('#userPublicId').val(id);
    $('form.user-form').submit();
  }
  </script>

@stop
