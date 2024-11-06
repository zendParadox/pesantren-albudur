@extends('layouts.home')
@section('title_page','Dashboard')
@section('content')

<div class="row">
    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-users"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Santri</h4>
                </div>
                <div class="card-body">
                    {{ $santri }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-envelope"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Surat Masuk</h4>
                </div>
                <div class="card-body">
                    {{ $in_mail }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-envelope-open-text"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Surat Keluar</h4>
                </div>
                <div class="card-body">
                    {{ $out_mail }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-1">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-user-cog"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Pengguna</h4>
                </div>
                <div class="card-body">
                    {{ $users }}
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-2">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-dollar-sign"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Pemasukan Kas</h4>
                </div>
                <div class="card-body">
                    <h5>Rp. {{ number_format($debit, 0, ',', '.') }}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-2">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-dollar-sign"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Pengeluaran Kas</h4>
                </div>
                <div class="card-body">
                    <h5>Rp. {{ number_format($credit, 0, ',', '.') }}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
        <div class="card card-statistic-2">
            <div class="card-icon bg-primary-2">
                <i class="fas fa-dollar-sign"></i>
            </div>
            <div class="card-wrap">
                <div class="card-header">
                    <h4>Saldo Kas</h4>
                </div>
                <div class="card-body">
                    <h5>Rp. {{ number_format($balance, 0, ',', '.') }}</h5>
                </div>
            </div>
        </div>
    </div>

    @endsection