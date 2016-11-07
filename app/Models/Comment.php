<?php namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Translate {
    protected $table = "comments";
    protected $fillable = [
        'article_id',
        'rate',
        'user_name',
        'user_phone',
        'user_email',
        'comment',
        'priority',
        'date',
        'active'
    ];

    public function article(){
        return $this->belongsTo('App\Models\Article');
    }
    public function getRate(){
        switch ($this->rate){
            case '5': $rate = 'Відмінно';
                return $rate;
                break;
            case '4': $rate = 'Добре';
                return $rate;
                break;
            case '3': $rate = 'Задовільно';
                return $rate;
                break;
            case '2': $rate = 'Погано';
                return  $rate;
                break;
            case '1': $rate = 'Дуже погано';
                return  $rate;
                break;
        }
    }

}
