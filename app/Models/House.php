<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class House extends Model
{
    use HasFactory;
    protected $guarded = ['id'];

    public function author(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function photos(){
        return $this->hasMany(Photo::class);
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
