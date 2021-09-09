<?php

namespace App\Empresa;

use Illuminate\Database\Eloquent\Model;

class rol extends Model
{
    //
     protected $fillable = [
        'nombre', 'slug', 'descripcion', 'acceso',
    ];
    
    public funtion users(){
        return $this->belongsToMany('App\User')->withTimeTamps();
    }
}
