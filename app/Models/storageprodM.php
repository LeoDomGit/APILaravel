<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class storageprodM extends Model
{
    protected $table='storageprod';
    protected $fillable=['idProd','idSize','idColor','idStorage','quantity','created_at','updated_at'];
    use HasFactory;
}
