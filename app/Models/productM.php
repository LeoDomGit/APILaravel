<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class productM extends Model
{
    protected $table='products';
    protected $primaryKey = 'id';
    protected $fillable=['id','productName','summary','content','status','idcate','idBrand','soLuotXem','highlight','created_at','updated_at'];
    use HasFactory;

    public function cate()
    {
        return $this->belongsTo(cateM::class,'idcate','idcate');
    }
    public function brand()
    {
        return $this->belongsTo(brandM::class,"idBrand","idbrand");
    }
    public function gallery()
    {
        return $this->hasMany(productGalleryM::class,'idProd','id');
    }
}
