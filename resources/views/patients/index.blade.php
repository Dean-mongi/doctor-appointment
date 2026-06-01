@extends('layouts.app')

@section('main')
<div class="module-page patients-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">Patient Registry</div>
                <h2>Patients</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Keep contact details, care status, and emergency contact information easy to scan on every device.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    @can('create', App\Models\Patient::class)
                        <a href="{{ route('patients.create') }}" class="btn"><i class="mdi mdi-account-plus mr-1"></i> Add Patient</a>
                    @endcan
                    <button type="button" class="btn"><i class="mdi mdi-download mr-1"></i> Export</button>
                </div>
            </div>
        </div>
    </div>

<div class="row">
    <div class="col-12">
        <div class="card module-panel">
            <div class="card-body">
                <div class="module-toolbar">
                    <h4 class="header-title mb-0">Patient Records</h4>
                    <form class="module-search" method="GET" action="{{ route('patients.index') }}">
                        <input type="search" name="search" class="form-control" id="search" placeholder="Search patients..." value="{{ request()->query('search') }}">
                        <button type="submit" class="btn btn-primary"><i class="mdi mdi-magnify mr-1"></i> Search</button>
                    </form>
                </div>

                <div class="table-responsive">
                    <table class="table table-centered mb-0">
                        <thead class="thead-light">
                            <tr>
                                <th>Photo</th>
                                <th>Patient ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Contact</th>
                                <th>Contact Person</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($patients as $patient)
                                <tr>
                                    <td>
                                        @if($patient->avatar)
                                            <img src="{{ asset('storage/' . $patient->avatar) }}" alt="image" class="rounded-circle avatar-xs">
                                        @else
                                            <img src="{{ asset('images/default-avatar.png') }}" alt="image" class="rounded-circle avatar-xs">
                                        @endif
                                    </td>
                                    <td>{{ $patient->id }}</td>
                                    <td>{{ $patient->name }}</td>
                                    <td>{{ $patient->email }}</td>
                                    <td>{{ $patient->address }}</td>
                                    <td>{{ $patient->contact }}</td>
                                    <td>{{ $patient->contact_person }}</td>
                                    <td><span class="status-pill">{{ $patient->status }}</span></td>
                                    <td>
                                        @can('edit patients', $patient)
                                            <a href="{{ route('patients.edit', $patient->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                        @endcan
                                        
                                        @can('delete patients', $patient)
                                            <form action="{{ route('patients.destroy', $patient->id) }}" method="POST" class="d-inline">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                            </form>
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="pagination justify-content-end mt-3">
                    {{ $patients->links() }}
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col -->
</div>
<!-- end row -->
</div>
@endsection
