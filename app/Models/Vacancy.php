<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Vacancy extends Model
{
    use Translatable;
    use HasFactory;

    protected $fillable =['title','desc','end_date','salary'];
    protected $translatable = ['title','desc'];




}
