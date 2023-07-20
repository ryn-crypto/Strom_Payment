@extends('layouts.mainLayout')
@section('title', 'Login Page')

@section('menu')
  <main class="d-flex w-100">
    <div class="container d-flex flex-column">
      <div class="row vh-100">
        <div class="col-sm-10 col-md-8 col-lg-6 col-xl-5 mx-auto d-table h-100">
          <div class="d-table-cell align-middle">
            @if (Session::has('status'))
              <div class="alert alert-danger" role="alert">
                {{ Session::get('pesan') }}
              </div>
            @endif
            <div class="text-center mt-4">
              <h1 class="h2">Selamat Datang!</h1>
              <p class="lead">
                Sign In untuk melihat tagihan
              </p>
            </div>

            <div class="card">
              <div class="card-body">
                <div class="m-sm-3">
                  <form method="POST" action="/auth/login">
                    @csrf
                    <div class="mb-3">
                      <label class="form-label" for="email">Email</label>
                      <input class="form-control form-control-lg" id="email" type="email" name="email"
                        placeholder="masukan email" />
                    </div>
                    <div class="mb-3">
                      <label class="form-label" for="password">Password</label>
                      <input class="form-control form-control-lg" id="password" type="password" name="password"
                        placeholder="masukan password" />
                    </div>
                    <div class="d-grid gap-2 mt-3">
                      <button type="submit" class="btn btn-lg btn-primary">Masuk</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="text-center mb-3">
              Ingin mendaftar? <a href="pages-sign-up.html">hubungi admin</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
@endsection
