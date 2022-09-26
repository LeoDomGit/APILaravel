<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cateM extends Model
{
    protected $table ='categrory';
    protected $fillable=['cateName','idcate','status','created_at','updated_at'];
    use HasFactory;
}
