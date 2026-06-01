@extends('layouts.app')

@section('main')
<div class="module-page reports-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">Reports</div>
                <h2>Doctor Report</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Compare specialists, contact details, and appointment demand across the care team.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    <a href="{{ route('reports.appointments') }}" class="btn"><i class="mdi mdi-calendar-clock mr-1"></i> Appointments</a>
                    <a href="{{ route('reports.pharmacy') }}" class="btn"><i class="mdi mdi-pill mr-1"></i> Pharmacy</a>
                    <a href="{{ route('reports.patients') }}" class="btn"><i class="mdi mdi-account-group mr-1"></i> Patients</a>
                </div>
            </div>
        </div>
    </div>

<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card module-panel">
            <div class="card-body">
                <!-- Filter Card -->
                <div class="d-flex align-items-center justify-content-between">
                    <h4 class="header-title mb-0">Filter by Specialty</h4>
                    <form id="specialty-filter-form" class="d-flex">
                        <select id="specialty-filter" class="form-control custom-select" name="specialty" onchange="document.getElementById('specialty-filter-form').submit();">
                            <option value="all" {{ $specialty === 'all' ? 'selected' : '' }}>All</option>
                            @foreach($specialties as $spec)
                                <option value="{{ $spec }}" {{ $specialty === $spec ? 'selected' : '' }}>{{ ucfirst($spec) }}</option>
                            @endforeach
                        </select>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Filter Card -->

<div class="row">
    @foreach($doctors as $doctor)
    <div class="col-md-6 col-lg-4">
        <div class="card text-center module-panel">
            <div class="card-body">
                <div class="avatar-lg mx-auto mb-3">
                    <img src="{{ $doctor->avatar ? asset('storage/' . $doctor->avatar) : 'https://via.placeholder.com/100' }}" alt="{{ $doctor->name }}" class="rounded-circle img-thumbnail">
                </div>
                <h4 class="card-title">{{ $doctor->name }}</h4>
                <p class="text-muted mb-2">{{ ucfirst($doctor->specialty) }}</p>
                <span class="badge badge-primary">Appointments: {{ $doctor->appointments_count }}</span>
                <p class="text-muted mb-0">{{ $doctor->email }}</p>
                <p class="text-muted mb-0">{{ $doctor->contact }}</p>
            </div>
        </div>
    </div>
    @endforeach
</div>
</div>
@endsection
