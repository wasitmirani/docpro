@extends('layouts.admin.layout')
@section('title','Service')
@section('admin-content')
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800"><a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-list" aria-hidden="true"></i> All Service </a></h1>
    <!-- DataTales Example -->
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Add Service</h6>
                </div>
                <div class="card-body">
                   
                    <form action="{{ route('admin.service.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="header">Header</label>
                                    <input type="text" class="form-control" name="header" id="header" >
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="icon">Icon</label>
                                    <input type="text" class="form-control" name="icon" id="icon" placeholder="fas fa-trash">
                                </div>
                            </div>


                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="images">Images</label>
                                    <input type="file" multiple class="form-control" name="images[]" id="images">
                                </div>
                            </div>


                        </div>



                        <div class="form-group">
                            <label for="sort_description">Short Description</label>
                            <textarea class="form-control" cols="30" rows="5" id="sort_description" name="sort_description"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="long_description">Long Description</label>
                            <textarea class="summernote" id="long_description" name="long_description"></textarea>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="status">Status</label>
                                    <select name="status" id="status" class="form-control">
                                        <option value="1">Active</option>
                                        <option value="0">In-Active</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="show_home_page">Show Home Page</label>
                                    <select name="show_homepage" id="show_home_page" class="form-control">
                                        <option value="0">No</option>
                                        <option value="1">Yes</option>
                                    </select>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="seo_title">Seo Title</label>
                            <input type="text" name="seo_title" class="form-control" id="seo_title">
                        </div>
                        <div class="form-group">
                            <label for="seo_description">Seo Description</label>
                            <textarea name="seo_description" id="seo_description" cols="30" rows="3" class="form-control"></textarea>
                        </div>

                        <button type="submit" class="btn btn-success">Save Service</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
