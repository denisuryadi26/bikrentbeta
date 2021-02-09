<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductTypeModel extends Model
{
    protected $table = 'producttype';
    protected $primaryKey = 'product_type_id';
    protected $fillable = [
        'product_type_id','name','created_date','modified_date','created_by','modified_by'
    ];

    protected $timestamp = false;

    const UPDATED_AT = null;
    const CREATED_AT = null;
}
