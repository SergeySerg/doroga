<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Translate {

    public function articles(){
        return $this->belongsTo('App\Models\Article');
    }
    public function getRate($rate){
        //dd($rate);
        switch ($rate){
            case '5': $rate = 'Дуже добре';
                return $rate;
                break;
            case '4': $rate = 'Добре';
                return $rate;
                break;
            case '3': $rate = 'Нормально';
                return $rate;
                break;
            case '2': $rate = 'Погано';
                return  $rate;
                break;
            case '1': $rate = 'Дуже погано';
                return  $rate;
                break;
        }
//return $rate;
    }

}
