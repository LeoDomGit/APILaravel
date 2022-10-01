<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class storagesM extends Model
{
    protected $table='storages';
    protected $fillable=['id','storageName','storageInfo','created_at','updated_at'];
    use HasFactory;
}
