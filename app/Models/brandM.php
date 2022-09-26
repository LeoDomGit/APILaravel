<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class brandM extends Model
{
    protected $table = 'tbl_brand';
    public $timestamps = false;
    protected $primaryKey = 'idbrand';
    protected $fillable = ['idbrand', 'brandname', 'status', 'created_at', 'updated_at'];
    use HasFactory;
    public function cate()
    {
        return $this->belongsToMany(Category::class, "brand_category", "idBrand", "idCate");
    }
}
