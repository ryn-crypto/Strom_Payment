@extends('..layouts.dasboardLayout')
@section('title', 'Data Tagihan')

@section('content')

  <main class="content">
    <div class="container-fluid p-0">

      <h1 class="h3 mb-3"> Data <strong>Tagihan Penggunaan</strong></h1>

      <div class="row">
        <div class="col d-flex">
          <div class="w-100">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="row d-flex justify-content-end">
                    <button class="col-3 btn btn-outline-warning mt-3 me-5">Buat tagihan bulan ini</button>
                  </div>
                  <div class="card-body">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">No</th>
                          <th scope="col">Tanggal</th>
                          <th scope="col">nomor_meter</th>
                          <th scope="col">daya</th>
                          <th scope="col">Meter Awal</th>
                          <th scope="col">Meter Ahir</th>
                          <th scope="col">Jumlah meter</th>
                          <th scope="col">Jumlah bayar</th>
                          <th scope="col">Status</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($tagihanPelanggan as $item)
                          <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $item->date }}</td>
                            <td>{{ $item->meter[0]->no_meter }}</td>
                            <td>daya</td>
                            <td>{{ $item->penggunaan->meter_awal }}</td>
                            <td>{{ $item->penggunaan->meter_ahir }}</td>
                            <td>{{ $item->jumlah_meter }}</td>
                            <td>{{ 'Rp ' . number_format($item->pembayaran->jumlah_bayar, 2, ',', '.') }}</td>
                            @if ($item->status[0]->status == 'Belum Bayar')
                              <td class="text-danger">{{ $item->status[0]->status }}</td>
                            @else
                              <td class="text-success">{{ $item->status[0]->status }}</td>
                            @endif
                          </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>


              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </main>

@endsection
