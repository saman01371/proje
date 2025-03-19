<?php

namespace App\Models\Market;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\MorphTo;

class Rating extends Model
{
    protected $fillable = ['model_type', 'model_id', 'rateable_type', 'rateable_id', 'value', 'status'];
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class,'author_id');
    }

    public function ratable(): MorphTo
    {
        return $this->morphTo();
    }

}
