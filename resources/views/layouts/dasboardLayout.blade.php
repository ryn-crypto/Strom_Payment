@extends('layouts.mainLayout')

@section('menu')
  <div class="wrapper">
    <nav id="sidebar" class="sidebar js-sidebar">
      <div class="sidebar-content js-simplebar">
        <a class="sidebar-brand" href="index.html">
          <span class="align-middle">Strom Payment</span>
        </a>

        <ul class="sidebar-nav">z
          @if (Auth::user()->level_id != 1)
            -
          @else
            <li class="sidebar-header">
              Admin
            </li>

            @if ($judul_menu == 'dasboard')
              <li class="sidebar-item active">
              @else
              <li class="sidebar-item">
            @endif
            <a class="sidebar-link" href="/Admin/">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
            </a>
            </li>

            @if ($judul_menu == 'data_pelanggan')
              <li class="sidebar-item active">
              @else
              <li class="sidebar-item">
            @endif
            <a class="sidebar-link" href="/Admin/dataPelanggan">
              <i class="align-middle" data-feather="list"></i> <span class="align-middle">Daftar Pelanggan</span>
            </a>
            </li>

            @if ($judul_menu == 'data_tagihan')
              <li class="sidebar-item active">
              @else
              <li class="sidebar-item">
            @endif
            <a class="sidebar-link" href="/Admin/dataTagihan">
              <i class="align-middle" data-feather="dollar-sign"></i> <span class="align-middle">Tagihan
                Pelanggan</span>
            </a>
            </li>
          @endif

          <li class="sidebar-header">
            User
          </li>

          @if ($judul_menu == 'status')
            <li class="sidebar-item active">
            @else
            <li class="sidebar-item">
          @endif
          <a class="sidebar-link" href="/User/status">
            <i class="align-middle" data-feather="database"></i> <span class="align-middle">Status</span>
          </a>
          </li>

          @if ($judul_menu == 'riwayat')
            <li class="sidebar-item active">
            @else
            <li class="sidebar-item">
          @endif
          <a class="sidebar-link" href="/User/riwayat">
            <i class="align-middle" data-feather="check-square"></i> <span class="align-middle">Riwayat
              Pembayaran</span>
          </a>
          </li>

          @if ($judul_menu == 'profile')
            <li class="sidebar-item active">
            @else
            <li class="sidebar-item">
          @endif
          <a class="sidebar-link" href="/User">
            <i class="align-middle" data-feather="user"></i> <span class="align-middle">Profile</span>
          </a>
          </li>

          @if ($judul_menu == 'password')
            <li class="sidebar-item active">
            @else
            <li class="sidebar-item">
          @endif
          <a class="sidebar-link" href="/User/password">
            <i class="align-middle" data-feather="lock"></i> <span class="align-middle">Ganti Password</span>
          </a>
          </li>

          <li class="sidebar-header">
            Settings
          </li>

          <li class="sidebar-item">
            <a class="sidebar-link" href="/auth/logout">
              <i class="align-middle" data-feather="log-out"></i> <span class="align-middle">Log Out</span>
            </a>
          </li>

      </div>
    </nav>

    <div class="main">
      <nav class="navbar navbar-expand navbar-light navbar-bg">
        <a class="sidebar-toggle js-sidebar-toggle">
          <i class="hamburger align-self-center"></i>
        </a>

        <div class="navbar-collapse collapse">
          <ul class="navbar-nav navbar-align">

            <li class="nav-item dropdown">
              <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" data-bs-toggle="dropdown" id="menu1">
                <i class="align-middle" data-feather="settings"></i>
              </a>
              <a class="nav-link dropdown-toggle d-none d-sm-inline-block" data-bs-toggle="dropdown">
                <img src="{{ asset('/img/default.jpg') }}" class="avatar img-fluid rounded me-1" alt="Charles Hall" />
                <span class="text-dark">Nama</span>
              </a>
              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="menu1">
                <a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i>
                  Profile</a>
                <a class="dropdown-item" href="User/"><i class="align-middle me-1" data-feather="settings"></i>
                  Settings</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/auth/logout">Log out</a>
              </div>
            </li>
          </ul>
        </div>
      </nav>

      @yield('content')
    @endsection
