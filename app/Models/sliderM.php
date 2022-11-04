<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sliderM extends Model
{
    protected $table= 'slider';
    protected $primary= 'id';
    protected $fillable=['name','slug','image','path','status','create_at','updated_at'];
    use HasFactory;
}