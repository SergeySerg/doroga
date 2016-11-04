<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Translate {

    public function articles(){
        return $this->belongsTo('App\Models\Article');
    }

}
