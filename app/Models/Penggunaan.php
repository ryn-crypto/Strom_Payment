<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penggunaan extends Model
{
    use HasFactory;

    protected $table = 'penggunaan';
    protected $fillable = ['meter_id', 'date', 'meter_awal', 'meter_ahir'];
}
