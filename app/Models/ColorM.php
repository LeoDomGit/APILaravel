<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ColorM extends Model
{
    protected $table ='colors';
    protected $filable= ['id','colorName','colorpicker','status','created_at','updated_at'];
    use HasFactory;
}
