<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class brandM extends Model
{
    use HasFactory;
    protected $table = 'tbl_brand';
    protected $primaryKey = 'idbrand';
    protected $fillable = ['idbrand', 'brandname', 'status', 'created_at', 'updated_at'];
    public function cate()
    {
        return $this->belongsToMany(cateM::class, "brand_categrory", "idBrand", "idCate");
    }
    public function prod()
    {
        return $this->hasMany(productM::class,"idBrand","idbrand");
    }
}
