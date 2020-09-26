<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style>
        .cmt{
            font-size:16px;
            font-family:initial;
        }
        .date{
            font-size:13px;
            margin-right: 5px;
        }
        .tag {
            background-color: #007bff;
            color: #fff;
            padding: 3px 9px;
            margin-right: 7px;
        }
       
    </style>
</head>
<body>
    <div class="container mt-5">
    <a href="/home">&laquo;back</a>
        <div class="col-sm-8 border offset-sm-2 p-4 bg-light shadow-lg p-3 mb-5 bg-white rounded">
            <div class="text-center pt-3 pb-3">
            
                <h5>{{$post->title}}</h5>
            </div>
            <div class="row">
               
                <div class="col-6 mb-2">
                   <b>{{$post->user->name}}</b>
                </div>
                <div class="col-6 mb-2">
                    <b>Posted At</b> :{{$post->created_at}}
                </div>
                <div class="col-12 mb-2">
                    <div class="bg-light pt-2 pb-2">
                    <b>Description</b> :
                    </div>
                    <div class="">
                        {{$post->description}}
                    </div>
                   
                </div>

                <div class="col-6 mb-3 mt-3">
                    <b>Tag</b> : 
                    @foreach($tag_ids as $id)
                       <a href="#" class="tag">{{$tags[$id]}}</a> 
                    @endforeach                                
                </div>
                <div class="col-12 mb-2">
                    <div class="bg-light pt-2 pb-2">
                        <b>Comments</b>
                    </div>
                    <div class="border set">
                        @foreach($comments as $comment)
                            <div class="cmt d-flex justify-content-between">
                                <div class="">
                                    {{$comment->user_name}} : <b class="m-2">{{$comment->comment}}</b> 
                                </div>
                                <div class="">
                                    <span class="date">{{$comment->created_at}} </span> 
                                </div>
                            </div>
                        @endforeach
                        <div class=" mt-3">
                            {{ $comments->links() }}
                        </div>
                    </div>
                    
                </div>

                <div class="col-12 mb-2">
                    <form action="{{url('/notification')}}" method="POST">
                    @csrf
                        <input type="hidden" name="id" value="{{$post->id}}">
                        <input type="hidden" name="user_id" value="{{$post->user->id}}">
                        <input type="hidden" name="useremail" value="{{$post->user->email}}">

                        <div class="">
                        <b>Comment</b> :
                        </div>
                       
                        <textarea name="comments" id="" class="form-control" required></textarea>
                        <div class="text-right mt-3">
                        <input type="submit" value="reply" class="btn btn-primary">
                        </div>  
                    </form>
                </div>
               
            </div>
        </div>
    </div>
</body>
</html> 