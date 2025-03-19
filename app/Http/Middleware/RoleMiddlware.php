<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class RoleMiddlware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next , $role, $permission = null): Response
    {
        if (!$request->user()->hasRole($role)) {
            abort(403);
        }

        if ($permission !== null && !$request->user()->can($permission)) {
            abort(403);
        }
        return $next($request);
    }
}
