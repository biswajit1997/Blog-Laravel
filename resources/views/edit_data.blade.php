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
    <a href="/api">&laquo;back</a>
        <div class="col-sm-8 border offset-sm-2 p-4 bg-light shadow-lg p-3 mb-5 bg-white rounded">
                <div class="text-center">
                    <h3>Edit Data</h3>
                </div>
                <div class="">
             
                    <form action="{{url('/update')}}" method="post">
                    @csrf
                        <input type="hidden" name="id" value="{{$one_data['id']}}">
                        <div class="">
                            <label for="">Name</label>
                            <input type="text" name="name" class="form-control" value="{{$one_data['name']}}" required>
                        </div>
                        <div class="">
                            <label for="">Year</label>
                            <input type="text" name="year" class="form-control" value="{{$one_data['year']}}" required>
                        </div>
                        <div class="">
                            <label for="">Color</label>
                            <input type="text" name="color" class="form-control" value="{{$one_data['color']}}" required>
                        </div>
                        <div class="text-center mt-3">
                            
                            <input type="submit" name="submit" class="btn btn-success" required>
                        </div>
                    </form>
               
                </div>
        </div>
    </div>
</body>
</html> 