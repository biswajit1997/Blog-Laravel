@extends('layouts.app')

@section('content')
<div class="container">

    <div class="row justify-content-center">
   
    <div class="col-md-4">
            <div class="card shadow-sm p-3 mb-5 bg-white rounded">
                <div class="card-header color d-flex justify-content-between">
                    <div class="">
                        Tags
                    </div>
                    <button type="button" class="btn btn-sm btn-light" data-toggle="modal" data-target="#exampleModal">
                        Add Tags
                    </button>
                </div>
                @foreach($categories as $tag)
                    <div class="card-body border-bottom">
                        <div class="">
                            <a href="/tag/{{$tag->id}}">{{$tag->tagname}}</a> 
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="col-md-8">
            <div class="card shadow-sm p-3 mb-5 bg-white rounded">
                <div class="card-header color d-flex justify-content-between">
                    <div class="">
                       <a href="{{url('/home')}}" class="text-dark">Posts</a> 
                    </div>
                    <button type="button" class="btn btn-sm btn-light" data-toggle="modal" data-target="#exampleModal1">
                        Add Posts
                    </button>
                </div>
           
                <div class="card-body ">
                   @if(count($posts))
                    @foreach($posts as $post)
                    <a href="/postdetails/{{$post->id}}">
                        <div class="card mb-3 ">
                             <div class="text-center">
                                <img src="{{ asset('storage/'.$post->image)}}" alt="image" width="500px" height="150px">
                            </div>
                            <div class="card-body  d-flex justify-content-around btn-sm">
                                <div class="">
                                    {{$post->title." ".'posted by'."   ".$post->user->name.''}}
                                </div>
                                <div class="">
                                    {{$post->created_at}}
                                </div>
                            </div>
                        </div> 
                        </a>
                    @endforeach
                    <div class="col-sm-4 offset-sm-4">
                        {{ $posts->links() }}
                    </div>
                    @else
                    <div class="text-center">
                        no data found
                    </div>
                    @endif
                </div>
            
            
            </div>
            
        </div>

      
        
     
    </div>
</div>
@include('modal') ;
@endsection
