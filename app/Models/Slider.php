<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Slider extends Model
{
    use HasFactory;
    
    use Translatable;

    protected $fillable =['title','desc','link','image'];

    protected $translatable = ['title', 'desc','link'];





}