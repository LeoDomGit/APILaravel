<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SizeM extends Model
{
    protected $table= 'tbl_size';
    protected $fillable=['idSize','sizename','sizeinfo','created_at','updated_at'];
    use HasFactory;
}
