<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = ['name', 'country_code' , 'currency_name', 'currency_code', 'currency_symbol'];
    
    public $timestamps = false;
    
    protected $table = 'cities';
}