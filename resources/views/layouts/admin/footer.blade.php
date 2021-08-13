

  <!-- Modal -->
  <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <h4>Are Your sure want to delete this item?</h4>
            </div>
            <div class="modal-footer">
                <form id="deleteForm" action="" method="POST">
                    @csrf
                    @method("DELETE")
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Yes,Delete</button>
                </form>

            </div>
        </div>
    </div>
</div>

<script>
    @if(Session::has('messege'))
      var type="{{Session::get('alert-type','info')}}"
      switch(type){
          case 'info':
               toastr.info("{{ Session::get('messege') }}");
               break;
          case 'success':
              toastr.success("{{ Session::get('messege') }}");
              break;
          case 'warning':
             toastr.warning("{{ Session::get('messege') }}");
              break;
          case 'error':
              toastr.error("{{ Session::get('messege') }}");
              break;
      }
    @endif
</script>

@if ($errors->any())
    @foreach ($errors->all() as $error)
        <script>
            toastr.error('{{ $error }}');
        </script>
    @endforeach
@endif

<script type="text/javascript">
(function($) {

    "use strict";
    $(document).ready(function() {
      $('.summernote').summernote();
      $('.select2').select2();

    //   check home section value
      $("#section_type").on('change',function(){
            var id=$(this).val();
            if(id==1)$("#section-details").addClass('d-none')
            else $("#section-details").removeClass('d-none')
        });

        // add custom video input field
        $("#addRow").on('click',function () {
            var html = '';
            html+='<div class="row" id="remove">'
            html+='<div class="col-md-9">'
            html+='<div class="form-group">'
            html+='<label for="link">Link</label>'
            html+='<input type="text" name="link[]" class="form-control" id="link">'
            html+='</div>'
            html+='</div>'
            html+='<div class="col-md-3 btn-row">'
            html+='<button type="button" id="removeRow" class="btn btn-danger">-</button>'
            html+='</div>'
            html+='</div>'
            $("#inputRow").append(html)
        });

        // remove custom video input field row
        $(document).on('click', '#removeRow', function () {
            $(this).closest('#remove').remove();
        });

        // add custom image input field for service section
        $("#addImageRow").on('click',function () {
            var html = '';
            html+='<div class="row" id="remove">';
            html+='<div class="col-md-9">';
            html+='<div class="form-group">';
            html+='<label for="">Image</label>';
            html+='<input type="file" name="image[]" class="form-control">';
            html+='</div>';
            html+='</div>';
            html+='<div class="col-md-3 btn-row">';
            html+='<button class="btn btn-danger" type="button" id="removeImageRow" >-</button>';
            html+='</div>';
            html+='</div>';
            $("#addRow").append(html)
        });

        // remove custom image input field row
        $(document).on('click', '#removeImageRow', function () {
            $(this).closest('#remove').remove();
        });

        // add custome medicine row
        $("#addMedicineRow").on('click',function () {
            var html = '';
            html+='<div class="row" id="remove">';
            html+='<div class="col-md-9">';
            html+='<div class="form-group">';
            html+='<label for="">Name</label>';
            html+='<input type="text" name="name[]" class="form-control">';
            html+='</div>';
            html+='</div>';
            html+='<div class="col-md-3 btn-row">';
            html+='<button class="btn btn-danger" type="button" id="removeImageRow" ><i class="fas fa-trash" aria-hidden="true"></i></button>';
            html+='</div>';
            html+='</div>';
            $("#medicine-row").append(html)
        });


        // add habit input field
        $("#addHabitRow").on('click',function () {
            var html = '';
            html+='<div class="row" id="remove">'
            html+='<div class="col-md-9">'
            html+='<div class="form-group">'
            html+='<label for="habit">Habit</label>'
            html+='<input type="text" name="habit[]" class="form-control" id="habit">'
            html+='</div>'
            html+='</div>'
            html+='<div class="col-md-3 btn-row">'
            html+='<button type="button" id="removeHabitRow" class="btn btn-danger">-</button>'
            html+='</div>'
            html+='</div>'
            $("#inputRow").append(html)
        });

        // remove habit input field row
        $(document).on('click', '#removeHabitRow', function () {
            $(this).closest('#remove').remove();
        });

        // add new prescribe medicine input field
        $("#addMedicineRow").on('click',function () {
            var html=$("#hiddenPrescribeRow").html();
            $("#medicineRow").append(html)
        });

        // remove prescribe medicine input field row
        $(document).on('click', '#removePrescribeRow', function () {
            $(this).closest('#delete-prescribe-row').remove();
        });

        // datepicker
        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
        });


    });
	})(jQuery);

    function printPrescribe(){
        var mode = 'iframe';
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            }
            $("div.prescribe").printArea(options)
    }

    function printReport(){
        var mode = 'iframe';
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            }
            $("div.printArea").printArea(options)
    }



    // new order notification
    function newOrderNotify(){
        $.ajax({
            type: 'GET',
            url: "{{ route('admin.view.order.notify') }}",
            success: function (response) {
                $("#newOrderNotify").text('')
            },
            error: function(err) {
                console.log(err);
            }
        });
    }

    // new message notification
    function newMessageNotify(){
        $.ajax({
            type: 'GET',
            url: "{{ route('admin.view.message.notify') }}",
            success: function (response) {
                $("#newMessageNotify").text('')
            },
            error: function(err) {
                console.log(err);
            }
        });
    }
	

</script>

</body>

</html>
