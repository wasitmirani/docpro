@extends('layouts.admin.layout')
@section('title','Schedule')
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.schedule.create') }}" class="btn btn-primary"><i class="fas fa-plus" aria-hidden="true"></i> New Schedule </a></h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Schedule Table</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th width="5%">SN</th>
                            <th width="15%">Doctor Name</th>
                            <th width="15%">Day</th>
                            <th width="15%">Time</th>
                            <th width="15%">Sit Quantity</th>
                            <th width="5%">Status</th>
                            <th width="20%">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($schedules as $index => $item)
                        <tr>
                            <td>{{ ++$index }}</td>
                            <td>{{ ucfirst($item->doctor->name)}}</td>
                            <td>{{ ucfirst($item->day->day) }}</td>
                            <td>{{ strtoupper($item->start_time) }} - {{ strtoupper($item->end_time) }}</td>
                            <td>{{ $item->quantity }}</td>
                            <td>
                                @if ($item->status==1)
                                <a href="" onclick="scheduleStatus({{ $item->id }})"><input type="checkbox" checked data-toggle="toggle" data-on="Active" data-off="In-Active" data-onstyle="success" data-offstyle="danger"></a>
                                @else
                                    <a href="" onclick="scheduleStatus({{ $item->id }})"><input type="checkbox" data-toggle="toggle" data-on="Active" data-off="In-Active" data-onstyle="success" data-offstyle="danger"></a>

                                @endif
                            </td>
                            <td>
                                <a href="{{ route('admin.schedule.edit',$item->id) }}" class="btn btn-primary btn-sm"><i class="fas fa-edit    "></i></a>
                                @php
                                    $count=$appointments->where('schedule_id',$item->id)->count();
                                @endphp
                                @if ($count==0)
                                <a data-toggle="modal" data-target="#deleteModal" href="javascript:;" onclick="deleteData({{ $item->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash    "></i></a>
                                @endif



                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        function deleteData(id){
            $("#deleteForm").attr("action",'{{ url("admin/schedule/") }}'+"/"+id)
        }

        function scheduleStatus(id){
            $.ajax({
                type:"get",
                url:"{{url('/admin/schedule-status/')}}"+"/"+id,
                success:function(response){
                   toastr.success(response)
                },
                error:function(err){
                    console.log(err);

                }
            })
        }
    </script>
@endsection
