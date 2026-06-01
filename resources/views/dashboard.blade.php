@extends('layouts.app')

@section('main')
@php
    $roleName = auth()->user()->hasRole('super_admin') ? 'Admin' : (auth()->user()->hasRole('doctor') ? 'Doctor' : 'Patient');
    $latestAppointments = ($appointments ?? collect())->take(6);
    $latestPharmacies = ($pharmacies ?? collect())->take(6);
    $appointmentTotal = $totalAppointments ?? ($appointments ?? collect())->count();
    $doctorTotal = $totalDoctorsCount ?? 0;
    $patientTotal = $totalPatients ?? 0;
    $pharmacyTotal = $totalPharmacyAmount ?? 0;
@endphp

<div class="da-dashboard">
    <div class="da-dashboard-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="hero-kicker">{{ $roleName }} Dashboard</div>
                <h2>Online Doctor Appointment and Hospital Handling System</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">
                    A responsive command center for bookings, care teams, pharmacy movement, patients, reports, and access control.
                </p>
            </div>
            <div class="col-lg-5">
                <div class="hero-actions">
                    @can('create appointments')
                        <a href="{{ route('appointments.create') }}" class="btn"><i class="mdi mdi-calendar-plus mr-1"></i> New Appointment</a>
                    @endcan
                    @can('view reports')
                        <a href="{{ route('reports.appointments') }}" class="btn"><i class="mdi mdi-chart-line mr-1"></i> Reports</a>
                    @endcan
                    @can('view settings')
                        <a href="{{ route('roles.index') }}" class="btn"><i class="mdi mdi-shield-account mr-1"></i> Configuration</a>
                    @endcan
                </div>
            </div>
        </div>
    </div>

    @if(auth()->user()->hasRole('super_admin'))
        <div class="row">
            <div class="col-xl-3 col-md-6">
                <div class="card metric-card metric-blue">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <div class="text-white-50 font-weight-bold">Appointments</div>
                                <h2 class="text-white mt-2 mb-1">{{ number_format($appointmentTotal) }}</h2>
                                <span class="text-white-50">Total scheduled visits</span>
                            </div>
                            <span class="metric-icon"><i class="mdi mdi-calendar-clock"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card metric-card metric-green">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <div class="text-white-50 font-weight-bold">Doctors</div>
                                <h2 class="text-white mt-2 mb-1">{{ number_format($doctorTotal) }}</h2>
                                <span class="text-white-50">Care providers</span>
                            </div>
                            <span class="metric-icon"><i class="mdi mdi-doctor"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card metric-card metric-rose">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <div class="text-white-50 font-weight-bold">Patients</div>
                                <h2 class="text-white mt-2 mb-1">{{ number_format($patientTotal) }}</h2>
                                <span class="text-white-50">Registered profiles</span>
                            </div>
                            <span class="metric-icon"><i class="mdi mdi-account-heart"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="card metric-card metric-amber">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <div>
                                <div class="text-white-50 font-weight-bold">Pharmacy</div>
                                <h2 class="text-white mt-2 mb-1">{{ number_format($pharmacyTotal, 2) }}</h2>
                                <span class="text-white-50">TZS collected</span>
                            </div>
                            <span class="metric-icon"><i class="mdi mdi-medical-bag"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="module-grid">
            @can('view appointments')
                <a class="module-tile" href="{{ route('appointments.index') }}">
                    <span class="module-icon icon-appointments"><i class="mdi mdi-calendar-multiple"></i></span>
                    <span>
                        <span class="module-title d-block">Appointments</span>
                        <span class="module-note">Book, monitor, and update patient visits.</span>
                    </span>
                </a>
            @endcan
            @can('view doctors')
                <a class="module-tile" href="{{ route('doctors.index') }}">
                    <span class="module-icon icon-doctors"><i class="mdi mdi-doctor"></i></span>
                    <span>
                        <span class="module-title d-block">Doctors</span>
                        <span class="module-note">Manage specialists, availability, and contacts.</span>
                    </span>
                </a>
            @endcan
            @can('view pharmacy')
                <a class="module-tile" href="{{ route('pharmacies.index') }}">
                    <span class="module-icon icon-pharmacy"><i class="mdi mdi-pill"></i></span>
                    <span>
                        <span class="module-title d-block">Pharmacy</span>
                        <span class="module-note">Track medicines, billing, and prescriptions.</span>
                    </span>
                </a>
            @endcan
            @can('view patients')
                <a class="module-tile" href="{{ route('patients.index') }}">
                    <span class="module-icon icon-patients"><i class="mdi mdi-account-group"></i></span>
                    <span>
                        <span class="module-title d-block">Patients</span>
                        <span class="module-note">View records, contacts, and care activity.</span>
                    </span>
                </a>
            @endcan
            @can('view reports')
                <a class="module-tile" href="{{ route('reports.appointments') }}">
                    <span class="module-icon icon-reports"><i class="mdi mdi-chart-box"></i></span>
                    <span>
                        <span class="module-title d-block">Reports</span>
                        <span class="module-note">Review trends and operational summaries.</span>
                    </span>
                </a>
            @endcan
            @can('view settings')
                <a class="module-tile" href="{{ route('roles.index') }}">
                    <span class="module-icon icon-config"><i class="mdi mdi-cog-sync"></i></span>
                    <span>
                        <span class="module-title d-block">System Configuration</span>
                        <span class="module-note">Control roles, permissions, and access.</span>
                    </span>
                </a>
            @endcan
        </div>

        <div class="row">
            <div class="col-xl-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="header-title mb-0">Top Scheduled Doctors</h4>
                            <a href="{{ route('reports.doctors') }}" class="btn btn-sm btn-light"><i class="mdi mdi-open-in-new mr-1"></i> View Report</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-centered mb-0">
                                <thead>
                                    <tr>
                                        <th>Doctor</th>
                                        <th>Specialty</th>
                                        <th>Appointments</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($topScheduledDoctors as $doctor)
                                        <tr>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <img src="{{ $doctor->avatar ? asset('storage/' . $doctor->avatar) : 'https://via.placeholder.com/50' }}" class="da-avatar mr-2" alt="{{ $doctor->name }}">
                                                    <div>
                                                        <strong>{{ $doctor->name }}</strong>
                                                        <div class="text-muted font-12">ID: {{ $doctor->id }}</div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>{{ $doctor->specialty }}</td>
                                            <td><span class="status-pill">{{ $doctor->appointments_count }}</span></td>
                                            <td>{{ $doctor->status }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="4" class="text-center text-muted">No doctor activity yet.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-5">
                <div class="card timeline-card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">Recent Appointments</h4>
                        @forelse($latestAppointments as $appointment)
                            <div class="da-timeline-item">
                                <span class="metric-icon metric-blue" style="width:40px;height:40px;"><i class="mdi mdi-calendar-check"></i></span>
                                <div>
                                    <strong>{{ optional($appointment->doctor)->name ?? 'Unassigned Doctor' }}</strong>
                                    <div class="text-muted">
                                        {{ optional($appointment->patient)->name ?? 'Unknown Patient' }} &middot; {{ $appointment->status ?? 'pending' }}
                                    </div>
                                    <small class="text-muted">{{ optional($appointment->created_at)->diffForHumans() }}</small>
                                </div>
                            </div>
                        @empty
                            <p class="text-muted mb-0">No appointments recorded yet.</p>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">Top Patients</h4>
                        <div class="table-responsive">
                            <table class="table table-centered mb-0">
                                <thead>
                                    <tr>
                                        <th>Patient</th>
                                        <th>Appointments</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($topPatients as $patient)
                                        <tr>
                                            <td>
                                                <strong>{{ $patient->name }}</strong>
                                                <div class="text-muted font-12">ID: {{ $patient->id }}</div>
                                            </td>
                                            <td><span class="status-pill">{{ $patient->appointments_count }}</span></td>
                                            <td>{{ $patient->status }}</td>
                                        </tr>
                                    @empty
                                        <tr><td colspan="3" class="text-center text-muted">No patient activity yet.</td></tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-6">
                <div class="card timeline-card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">Recent Pharmacy Activity</h4>
                        @forelse($latestPharmacies as $pharmacy)
                            <div class="da-timeline-item">
                                <span class="metric-icon metric-green" style="width:40px;height:40px;"><i class="mdi mdi-pill"></i></span>
                                <div>
                                    <strong>{{ optional($pharmacy->patient)->name ?? 'Unknown Patient' }}</strong>
                                    <div class="text-muted">{{ $pharmacy->medicine }} &middot; {{ number_format($pharmacy->amount, 2) }} TZS</div>
                                    <small class="text-muted">{{ optional($pharmacy->created_at)->diffForHumans() }}</small>
                                </div>
                            </div>
                        @empty
                            <p class="text-muted mb-0">No pharmacy activity recorded yet.</p>
                        @endforelse
                    </div>
                </div>
            </div>
        </div>
    @endif

    @if(auth()->user()->hasRole('patient') || auth()->user()->hasRole('doctor'))
        <div class="row">
            <div class="col-lg-7">
                <div class="card timeline-card">
                    <div class="card-body">
                        <h4 class="header-title mb-3">{{ auth()->user()->hasRole('doctor') ? 'Upcoming Appointments' : 'Recent Appointments' }}</h4>
                        @forelse($latestAppointments as $appointment)
                            <div class="da-timeline-item">
                                <span class="metric-icon metric-blue" style="width:40px;height:40px;"><i class="mdi mdi-calendar-check"></i></span>
                                <div>
                                    <strong>{{ optional($appointment->doctor)->name ?? 'Assigned Doctor' }}</strong>
                                    <div class="text-muted">Appointment with {{ optional($appointment->patient)->name ?? 'Unknown Patient' }}</div>
                                    <small class="text-muted">{{ optional($appointment->created_at)->diffForHumans() }}</small>
                                </div>
                            </div>
                        @empty
                            <p class="text-muted mb-0">No appointments available.</p>
                        @endforelse
                    </div>
                </div>
            </div>
            @if(auth()->user()->hasRole('patient'))
                <div class="col-lg-5">
                    <div class="card timeline-card">
                        <div class="card-body">
                            <h4 class="header-title mb-3">Recent Pharmacies</h4>
                            @forelse($latestPharmacies as $pharmacy)
                                <div class="da-timeline-item">
                                    <span class="metric-icon metric-green" style="width:40px;height:40px;"><i class="mdi mdi-medical-bag"></i></span>
                                    <div>
                                        <strong>{{ $pharmacy->medicine }}</strong>
                                        <div class="text-muted">{{ number_format($pharmacy->amount, 2) }} TZS</div>
                                        <small class="text-muted">{{ optional($pharmacy->created_at)->diffForHumans() }}</small>
                                    </div>
                                </div>
                            @empty
                                <p class="text-muted mb-0">No pharmacy activity available.</p>
                            @endforelse
                        </div>
                    </div>
                </div>
            @endif
        </div>
    @endif
</div>
@endsection
