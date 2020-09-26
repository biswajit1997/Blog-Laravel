<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Posts;
use App\Models\Tag;
use App\Models\Comments;
use \App\Mail\SendMail;


class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
       
        $tagnames =implode(" ",$request->tagname);
        $user_id = auth()->user()->id;
       Posts::create([
           'title' => $request->title,
           'user_id' => $user_id,
           'description' => $request->description,
           'tag_id' => $tagnames,
       ]);
       return redirect()->back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function post($id)
    {   
        
        $comments = Comments::where('post_id',$id)->paginate(5);
        $allposts= Posts::where('id',$id)->first();
        $tag_ids = explode(" ",$allposts->tag_id);
        $tags = Tag::select('id','tagname')->get();
        foreach ($tags as $value) {
            $tag_details[$value->id] = $value->tagname;
        }
        $data = [
            'post' => $allposts,
            'comments' => $comments,
            'tag_ids' => $tag_ids,
            'tags'  => $tag_details,
        ];
        return view('postdetails', $data);
    }
   
    
}
