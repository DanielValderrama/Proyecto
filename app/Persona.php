<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class persona extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nombre','cedula','eps','afp','arl','telefono','empleado','nombre_contacto','telefono_contacto','parentesco','direccion',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'remember_token',
    ];
}