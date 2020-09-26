<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\Tag;


class Posts extends Model
{
    protected $guarded = [ ]; 


    public function user(){
        
        return $this->belongsTo(User::class);
    }

    public function tag(){
        
        return $this->belongsTo(Tag::class);
    }
}
