<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CatePosts extends Model
{
    use HasFactory;
    protected $table = 'cate_posts';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nameCatePosts','slugCatePost','logo','der','created_at','updated_at'];
}
