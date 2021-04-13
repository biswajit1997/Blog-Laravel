<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
   
</head>
<body>
    <div class="container mt-5">
    <a href="/home">&laquo;back</a>
        <div class="col-sm-8 border offset-sm-2 p-4 bg-light shadow-lg p-3 mb-5 bg-white rounded">
                <div class="text-center">
                    <h3>Image Upload</h3>
                </div>
                <div class="">
             
                    <form action="{{url('/image_upload')}}" method="post" enctype="multipart/form-data">
                    @csrf
                        <div class="">
                            <label for="">Name</label>
                            <input type="text" name="name" class="form-control" value="" required>
                        </div>
                        <div class="">
                            <label for="">Upload Image</label>
                            <input type="file" name="image" class="form-control" value="" required>
                        </div>
                        <div class="text-center mt-3">
                            
                            <input type="submit" name="submit" class="btn btn-success" required>
                        </div>
                    </form>
               
                </div>
        </div>
    </div>


    <div class="container">
        <table class="table table-bordered">
            <thead>
                <th>Id</th>
                <th>Name</th>
                <th class="text-center">Image</th>
                <th class="text-center">Action</th>
            </thead>
            <tbody>
            @foreach($alldata as $data)
                <tr>
                    <td>{{$data->id}}</td>
                    <td>{{$data->name}}</td>
                    <td class="text-center"><img src="{{ asset('storage/'.$data->image)}}" alt="image" width="100px" height="100px"></td>
                    <td class="text-center"><a href="/delete_image/{{$data->id}}" class="text-danger ">X</a></td>
                    
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</body>
</html> 