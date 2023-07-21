@extends('..layouts.dasboardLayout')
@section('title', 'Data Pelanggan')

@section('content')

  <main class="content">
    <div class="container-fluid p-0">
      <h1 class="h3 mb-3"> Data <strong>Pelanggan</strong></h1>
      @if (Session::has('status'))
        <div class="alert alert-success" role="alert">
          {{ Session::get('pesan') }}
        </div>
      @endif

      <div class="row">
        <div class="col d-flex">
          <div class="w-100">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="row d-flex justify-content-between mt-3 ps-3">
                    <div class="col-4">
                      <form action="" method="GET">
                        <div class="input-group">
                          <input type="text" class="form-control" placeholder="Keyword" name="keyword">
                          <button type="submit" class="input-group-text btn btn-primary"
                            id="basic-addon1">Search</i></button>
                        </div>
                      </form>
                    </div>
                    <div class="col-6 d-none d-md-flex justify-content-end me-3">
                      <button class="col-8 btn btn-outline-success" type="button" data-bs-toggle="modal"
                        data-bs-target="#tambahData">Tambah Data Custommer</button>
                    </div>
                  </div>

                  <div class="card-body">
                    <table class="table text-center">
                      <thead>
                        <tr>
                          <th scope="col">No</th>
                          <th scope="col">Nama</th>
                          <th scope="col">Email</th>
                          <th scope="col">Alamat</th>
                          <th scope="col">Nomor Meter</th>
                          <th scope="col">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach ($dataUser as $item)
                          <tr>
                            <th scope="row">{{ $loop->iteration }}</th>
                            <td>{{ $item->nama }}</td>
                            <td>{{ $item->email }}</td>
                            <td>{{ $item->alamat }}</td>
                            <td>{{ $item->meter->no_meter }}</td>
                            <td>
                              <button class="btn btn-outline-warning" type="button" data-bs-toggle="modal"
                                data-bs-target="#edit" data-bs-email="{{ $item->email }}"
                                data-bs-nama="{{ $item->nama }}" data-bs-alamat="{{ $item->alamat }}"
                                data-bs-noMeter="{{ $item->meter->no_meter }}" data-bs-id="{{ $item->id }}"
                                data-bs-tarif="{{ $item->meter->tarif->id }}">Edit</button>
                              <button class="btn btn-outline-danger" type="button" data-bs-toggle="modal"
                                data-bs-target="#hapus" data-bs-nama="{{ $item->nama }}"
                                data-bs-id="{{ $item->id }}">Hapus</button>
                            </td>
                          </tr>
                        @endforeach
                      </tbody>
                    </table>
                    <div class="my-5">
                      {{ $dataUser->withQueryString()->links() }}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>

  <!-- Modal tambah data -->
  <div class="modal fade" id="tambahData" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Tambah Data Custommer</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form action="/Admin/add" method="POST">
            @csrf
            <div class="row">
              <div class="col-12 col-md-6 mt-2">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="nama" class="form-label">Nama</label>
                <input type="text" class="form-control" id="nama" name="nama">
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="alamat" class="form-label">Alamat</label>
                <input type="text" class="form-control" id="alamat" name="alamat">
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" id="password">
              </div>
              <div class="col-12 mt-3">
                <select class="form-select" aria-label="Default select" name="tarif_id">
                  <option selected>Pilih Daya Listri</option>
                  @foreach ($tarif as $value)
                    <option value="{{ $value->id }}">{{ $value->daya }} VA</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="modal-footer mt-3">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-primary">Tambahkan</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal edit data -->
  <div class="modal fade" id="edit" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Edit Data Custommer</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form action="/Admin/edit" method="POST">
            @csrf
            <div class="row">
              <div class="col-12 col-md-6 mt-2">
                <label for="email" class="form-label">Email address</label>
                <input type="email" class="form-control" id="email" name="email" readonly>
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="nama" class="form-label">Nama</label>
                <input type="text" class="form-control" id="nama" name="nama">
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="alamat" class="form-label">Alamat</label>
                <input type="text" class="form-control" id="alamat" name="alamat">
              </div>
              <div class="col-12 col-md-6 mt-2">
                <label for="noMeter" class="form-label">No Meter</label>
                <input type="text" class="form-control" name="no_meter" id="noMeter" readonly>
              </div>
              <input type="text" class="form-control" name="id" id="idUser" hidden>
              <div class="col-12 mt-3">
                <select class="form-select" aria-label="Default select" id="tarif" name="tarif_id">
                  <option selected>Pilih Daya Listri</option>
                  @foreach ($tarif as $value)
                    <option value="{{ $value->id }}">{{ $value->daya }} VA</option>
                  @endforeach
                </select>
              </div>
            </div>
            <div class="modal-footer mt-3">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
              <button type="submit" class="btn btn-warning">Simpan</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal delete data -->
  <div class="modal fade" id="hapus" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">Hapus Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <p>Yakin menghapus data ini ?</p>
          <div class="modal-footer mt-3">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
            <form method="get">
              @csrf
              <a href="" id="hapusData" type="submit" class="btn btn-danger">Hapus Data</a>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  {{-- untuk modal edit data --}}
  <script>
    let modalEdit = document.getElementById('edit')
    modalEdit.addEventListener('show.bs.modal', function(event) {
      // Button that triggered the modal
      let button = event.relatedTarget

      // ambil data dari triger modals
      let email = button.getAttribute('data-bs-email')
      let nama = button.getAttribute('data-bs-nama')
      let alamat = button.getAttribute('data-bs-alamat')
      let noMeter = button.getAttribute('data-bs-noMeter')
      let iduser = button.getAttribute('data-bs-id')
      let tarif = button.getAttribute('data-bs-tarif')

      // persiapkan form 
      let formemail = modalEdit.querySelector('#email')
      let formnama = modalEdit.querySelector('#nama')
      let formalamat = modalEdit.querySelector('#alamat')
      let formnoMeter = modalEdit.querySelector('#noMeter')
      let formIduser = modalEdit.querySelector('#idUser')
      let formtarif = modalEdit.querySelector('#tarif')

      // modalTitle.textContent = 'New message to ' + recipient
      formemail.value = email
      formnama.value = nama
      formalamat.value = alamat
      formnoMeter.value = noMeter
      formIduser.value = iduser
      formtarif.value = tarif
    })
  </script>

  {{-- untuk modal hapus data --}}
  <script>
    let modalHapus = document.getElementById('hapus')
    modalHapus.addEventListener('show.bs.modal', function(event) {
      // Button that triggered the modal
      let button = event.relatedTarget

      // ambil data dari triger modals
      let id = button.getAttribute('data-bs-id')
      let nama = button.getAttribute('data-bs-nama')

      // persiapkan form 
      let formdelete = modalHapus.querySelector('#hapusData')
      let modalTitle = modalHapus.querySelector('.modal-title')

      // modalTitle.textContent = 'New message to ' + recipient
      modalTitle.textContent = 'Hapus data' + nama
      formdelete.setAttribute('href', '/Admin/delete/' + id)
    })
  </script>

@endsection
