<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class XSS
{
 public function handle(Request $request, Closure $next)

    {
     $input = $request->all();
         array_walk_recursive($input, function(&$input) {
             $input = strip_tags($input);
         });
          if(array_key_exists('title',$input)){
            unset($input['title']);
         }
         else if(array_key_exists('desc_1',$input)){
            unset($input['desc_1']);
         }
         else if(array_key_exists('desc_2',$input)){
            unset($input['desc_2']);
         }
         else if(array_key_exists('desc_3',$input)){
            unset($input['desc_3']);
         }
         
    $request->merge($input);
    return $next($request);
   

    }
}