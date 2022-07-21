<?php

namespace App\Http\Middleware;

use Closure;

class ChangeLanguage
{
    public function handle($request, Closure $next)
    {
        // Check header request and determine localizaton
        $locale = ($request->hasHeader('Accept-Language')) ? $request->header('Accept-Language') : 'az';

        // set laravel localization
        app()->setLocale($locale);
        return $next($request);
    }
}
