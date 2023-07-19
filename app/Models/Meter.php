<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Meter extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'meter';
    protected $fillable = ['no_meter', 'tarif_id'];

    public function tarif(): BelongsTo
    {
        return $this->belongsTo(Tarif::class, 'tarif_id', 'id');
    }
}
