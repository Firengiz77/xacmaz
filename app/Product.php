<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Product extends Model
{
    use HasFactory;
    
    use Translatable;

    protected $fillable =['name','title','image'];

    protected $translatable = ['name','title'];
 
}
