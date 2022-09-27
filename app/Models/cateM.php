<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cateM extends Model
{
    use HasFactory;
    protected $table ='categrory';
    protected $primaryKey = 'idcate';
    protected $fillable=['idcate','cateName','status','created_at','updated_at'];
    public function brand()
    {
        return $this->belongsToMany(brandM::class,"brand_categrory","idCate","idBrand");
    }
}
