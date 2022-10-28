<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class postsM extends Model
{
    use HasFactory;
    protected $table = 'posts';
    protected $primaryKey = 'id';
    protected $fillable = ['id', 'idcatePosts', 'titlePosts', 'slugPosts', 'summaryPosts','imagePosts','tagsPosts','contentPosts','viewPosts','statusPosts','created_at','updated_at','deleted_at'];
    public function cateposts()
    {
        return $this->belongsTo(CatePosts::class,"idcatePosts","id");
    }
}
