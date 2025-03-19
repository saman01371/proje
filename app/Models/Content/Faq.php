<?php

namespace App\Models\Content;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Faq extends Model
{
    use SoftDeletes;
    protected $fillable=['question','answer','slug','status','tags'];

}
