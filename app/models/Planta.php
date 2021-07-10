<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Planta extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'plantas';
    public $incrementing = true;
    public $timestamps = false;
 
    protected $fillable = [
        'nombre', 'descripcion', 'precio', 'desbloqueado', 'efecto_del_nutriente', 
        'costo_soles', 'recarga_en_segundos', 'imagen'
    ];
}