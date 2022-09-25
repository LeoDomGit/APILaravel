<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class brandM extends Model
{
    protected $table='tbl_brand';
    protected $fillable=['idbrand','brandname','status','created_at','updated_at'];
    use HasFactory;
}
