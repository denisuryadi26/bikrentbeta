<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MultipleProductModel extends Model
{
    /**
    * fillable
    *
    * @var array
    */
    protected $fillable = [
        'image', 'title', 'content','price'
    ];
}