<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class prodStorage extends Model
{
    protected $table= 'prodStorage';
    protected $fillable= ['idProd','idSize','colorName','colorPath','quantity','created_at','updated_at'];
    use HasFactory;
}
