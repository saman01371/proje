<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Otp extends Model
{
    protected $guarded=['id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
