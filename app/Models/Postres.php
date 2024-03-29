<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Postres extends Model
{
    use HasFactory;

    protected $table = 'postres';

    protected $fillable = ['nombre', 'precio', 'stock'];

}
