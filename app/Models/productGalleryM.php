<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productGalleryM extends Model
{
    protected $table = 'productgallery';
    protected $fillable = ['idProd','imagename','prodSet','created_at','updated_at'];
    use HasFactory;
    use HasFactory;
}
