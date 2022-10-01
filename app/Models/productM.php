<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productM extends Model
{
    protected $table='products';
    protected $fillable=['productName','summary','content','status','idcate','idBrand','soLuotXem','highlight','created_at','updated_at'];
    use HasFactory;
}
