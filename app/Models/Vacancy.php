<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Vacancy extends Model
{
    use Translatable;
    use HasFactory;

    protected $fillable =['title_1','desc_1','end_date','salary','desc_2','desc_3'];
    protected $translatable = ['title_1','desc_1','desc_2','desc_3'];




}
