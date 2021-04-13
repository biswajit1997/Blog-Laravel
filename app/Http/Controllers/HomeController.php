<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tag;
use App\Models\Posts;
use App\Notifications\Comment;
use App\User;
use Notification;
use App\Models\Comments;
use Illuminate\Support\Facades\Http;
use \GuzzleHttp\Client;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // $tags= Tag::get();
        // return view('home',['category'=>$tags]);
        
    }
    public function posts()
    {
       
        $allposts= Posts::latest()->paginate('4');
        
        return view('home', ['posts' => $allposts]);
        
    }

    public function notification(Request $request)
    { 
        Comments::create([
            'post_id' => $request->id,
            'user_name' => auth()->user()->name,
            'comment' => $request->comments,
       ]);
            

        $user = User::where('id',$request->user_id)->first();

        $data =  Posts::find($request->id);
        
        $name = auth()->user()->name;
        $title = $data->title;

        $details = [
            'greeting' => $name,
            'body' => $title,
            'thanks' => 'Thank you for comments!',
        ];
        
        Notification::send($user, new Comment($details));

        // $user->notify(new Comment($details));

        return redirect()->route('post', ['id' => $request->id]);
        
    }
    public function notify(){

        $notifications = auth()->user()->notifications;
        foreach($notifications as $notification)
        {
                $notification;
        }
        return $notifications;
    }

    public function tag($id){

        $post=Posts::where('tags_id',$id)->paginate('2');
        
        return view('home', ['posts' => $post]);

    }

   }
