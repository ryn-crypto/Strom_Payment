<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;


class Tagihan extends Model
{
    use HasFactory;

    // data tabel
    protected $table = 'tagihan';
    protected $fillable = ['meter_id', 'penggunaan_id', 'date', 'jumlah_meter', 'status_id'];

    // relasi dangan tabel pembayaran (one to one)
    public function pembayaran(): BelongsTo
    {
        return $this->belongsTo(Pembayaran::class, 'id', 'tagihan_id');
    }

    // relasi dengan tabel status (many to one)
    public function status(): HasMany
    {
        return $this->hasMany(Status::class, 'id', 'status_id');
    }

    // relasi dengan tabel penggunaan (one to one)
    public function penggunaan(): BelongsTo
    {
        return $this->belongsTo(Penggunaan::class, 'penggunaan_id', 'id');
    }

    // relasi dengan tabel Meter (many to one)
    public function meter(): HasMany
    {
        return $this->hasMany(Meter::class, 'id', 'meter_id');
    }
}
