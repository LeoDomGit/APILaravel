<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table='category';
    public $timestamps = false;
    protected $primaryKey = 'idcate';
    protected $fillable=['idcate','cateName','status','created_at','updated_at'];
    public function brand()
    {
        return $this->belongsToMany(brandM::class,"brand_category","idCate","idBrand");
    }
}
