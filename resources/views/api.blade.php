@extends('layouts.app')

@section('content')
<div class="container">
    <div class="col-md-12">
    <div class="card shadow-sm p-3 mb-5 bg-white rounded">
        <div class="card-header color d-flex justify-content-between">
            <div class="">
                Api Data
            </div>
        </div>

        <div class="card-body ">
                <div class="card mb-3 ">
                    <table class="table table-bordered">
                        <thead>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Year</th>
                            <th>Color</th>
                            <th class="text-center" colspan="2">Action</th>
                        </thead>
                        <tbody>
                        @foreach($api_data['data'] as $data)
                            <tr>
                                <td>{{$data['id']}}</td>
                                <td>{{$data['name']}}</td>
                                <td>{{$data['year']}}</td>
                                <td>{{$data['color']}}</td>
                                <td class="text-center"><a href="/edit_data/{{$data['id']}}" class="text-primary">edit</a></td>
                                <td class="text-center"><a href="/delete_data/{{$data['id']}}" class="text-danger">delete</a></td>  
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div> 
        </div>
    </div>
   </div>
@endsection

