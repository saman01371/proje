<?php

namespace App\Models\Market;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{

    protected $guarded = ['id'];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function paymentable()
    {
        return $this->morphTo();
    }
}
