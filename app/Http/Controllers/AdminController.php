<?php

namespace App\Http\Controllers;

use App\Http\Requests\CustomerCreateRequest;
use App\Models\Meter;
use App\Models\Tagihan;
use App\Models\Tarif;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Symfony\Component\VarDumper\VarDumper;

class AdminController extends Controller
{
    //
    public function index()
    {
        return view("admin.dasboard", ['judul_menu' => 'dasboard']);
    }

    // menampilkan data Pelanggan
    public function dataPelanggan(Request $request)
    {
        // ambil keyword dari input searching
        $keyword = $request->keyword;

        // untuk mengambil id tarif
        $tarif = Tarif::all();

        // untuk mengambil semua data custommer
        $user = User::with('meter.tarif')
            ->where('nama', 'LIKE', "%" . $keyword . '%')
            ->orWhereHas('meter', function ($query) use ($keyword) {
                $query->where('no_meter', 'LIKE', "%" . $keyword . '%');
            })->paginate(20);

        // mengarahkan kehalaman view dengan membawa data
        return view("admin.data-pelanggan", ['judul_menu' => 'data_pelanggan', 'dataUser' => $user, 'tarif' => $tarif]);
    }

    // menambahkan data Pelanggan
    public function addPelanggan(CustomerCreateRequest $request)
    {
        // untuk sementara menggunkan data dummy 
        // level_id dan img untuk users
        $request['level_id'] = 1;
        $request['img'] = 'default.png';
        // no meter untuk tabel meter
        $request['no_meter'] = rand(1, 1000000000000000);

        // menambahkan data kedalam tabel Meter
        Meter::create($request->all());
        $request['meter_id'] = Meter::get()->where('no_meter', $request['no_meter'])->value('id');

        // menambahakan data kedalam tabel Users
        $customer = User::create($request->all());
        if ($customer) {
            Session::flash('status', 'succes');
            Session::flash('pesan', 'Data customer baru sudah di simpan');
        }

        // redirect kehalaman data pelanggan
        return redirect('/Admin/dataPelanggan');
    }

    // fungsi untuk melakukan edit pelanggan
    public function editPelanggan(Request $request)
    {
        // melakukan update kedalam tabel User
        $user = User::findOrFail($request->id);
        $user->update($request->all());

        // melakukan update pada tabel Meter
        $meter = Meter::findOrFail($user->meter_id);
        $validator = $meter->update($request->all());

        if ($validator) {
            Session::flash('status', 'succes');
            Session::flash('pesan', 'Data customer diperbarui');
        }

        // redirect kehalaman data pelanggan
        return redirect('/Admin/dataPelanggan');
    }

    // fungsi untuk melakukan hapus pelanggan
    public function deletePelanggan($id)
    {

        // menghapus data User
        $user = User::findOrFail($id);
        $user->delete();

        // menghapus data Meter
        $meter = Meter::findOrFail($user->meter_id);
        $validator = $meter->delete();

        if ($validator) {
            Session::flash('status', 'succes');
            Session::flash('pesan', 'Data customer sudah dihapus');
        }

        // redirect kehalaman data pelanggan
        return redirect('/Admin/dataPelanggan');
    }

    // 
    public function dataTagihan()
    {
        $tagihan = Tagihan::with('pembayaran', 'status', 'penggunaan', 'meter')->get();
        return view("admin.data-tagihan", ['judul_menu' => 'data_tagihan', 'tagihanPelanggan' => $tagihan]);
    }
}
