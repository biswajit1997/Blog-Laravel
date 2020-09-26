<?php

namespace App\Models;
use App\Models\Posts;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $guarded = [ ]; 


    public function posts(){
        
        return $this->hasMany(Posts::class);
    }
}
