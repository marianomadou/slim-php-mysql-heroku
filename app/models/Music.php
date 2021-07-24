<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Music extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'musica';
    public $incrementing = true;
    public $timestamps = false;
 
    protected $fillable = [
    ];
}