<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LoginM extends Model
{
    protected $table='login';
    protected $fillable =['idUser','created_at'];
    use HasFactory;
}
