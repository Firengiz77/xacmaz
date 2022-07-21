<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class GalleryType extends Model
{
    use Translatable;
    use HasFactory;

    protected $fillable =['name'];
    protected $translatable = ['name'];



}
