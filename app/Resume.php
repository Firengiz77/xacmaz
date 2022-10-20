<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Resume extends Model
{
    use HasFactory;
    
     protected $fillable =['name','email','surname','phone','file','vacancy_id','gender','experience','birthdate'];


}
