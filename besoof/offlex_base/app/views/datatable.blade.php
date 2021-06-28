<div class="table-responsive">
<table class="table table-striped dataTable no-footer {{ $class = str_random(8) }}">
    <colgroup>
        @for ($i = 0; $i < count($columns); $i++)
        <col class="con{{ $i }}" />
        @endfor
    </colgroup>
    <thead>
    <tr>
        @foreach($columns as $i => $c)
        <th align="center" valign="middle" class="head{{ $i }}" 
            @if ($c == 'checkbox')
                style="width:20px"            
            @endif
        >
            @if ($c == 'checkbox' && $hasCheckboxes = true)
                <div class="checkbox table-header-checkbox">
                    <input type="checkbox" id="selectAll" class="selectAll">
                    <label for="selectAll"></label>
                </div>
            @else
                {{ $c }}
            @endif
        </th>
        @endforeach
    </tr>
    </thead>
    <tbody>
    @foreach($data as $d)
    <tr>
        @foreach($d as $dd)
        <td>{{ $dd }}</td>
        @endforeach
    </tr>
    @endforeach
    </tbody>
</table>
</div>
<script type="text/javascript">
$(document).ready(function(){
        // dynamic table - {{Request::path()}}
        

        $('.{{$class }}').dataTable({
            "fnRowCallback": function(row, data) { 
                if (data[0].indexOf('ENTITY_DELETED') > 0) {
                    $(row).addClass('entityDeleted');
                }
                if (data[0].indexOf('ENTITY_ARCHIVED') > 0) {
                    $(row).addClass('entityArchived');
                }
            },
            "bAutoWidth": false,            
            @if (isset($hasCheckboxes) && $hasCheckboxes)
            'aaSorting': [['1', 'asc']],
            // Disable sorting on the first column
            "aoColumnDefs": [ {
                'bSortable': false,
                'aTargets': [ 0, {{ count($columns) - 1 }} ]                
            } ],
            @endif
            @foreach ($options as $k => $o)
            {{ json_encode($k) }}: {{ json_encode($o) }},
            @endforeach
            @foreach ($callbacks as $k => $o)
            {{ json_encode($k) }}: {{ $o }},
            @endforeach
            "fnDrawCallback": function(oSettings) {
                if (window.onDatatableReady) {
                    window.onDatatableReady();
                }
            }
        });
    });
</script>