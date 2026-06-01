@extends('layouts.app')
@section('main')

<div class="module-page appointments-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">Scheduling Desk</div>
                <h2>Appointments</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Coordinate patient visits, doctor assignments, status, and timing from a clear responsive workspace.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    @can('create', App\Models\Appointment::class)
                        <a href="{{ route('appointments.create') }}" class="btn"><i class="mdi mdi-calendar-plus mr-1"></i> Add Appointment</a>
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
                @if(session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                @endif

                @if(session('error'))
                    <div class="alert alert-danger">{{ session('error') }}</div>
                @endif

                <div class="module-toolbar">
                    <h4 class="header-title mb-0">Appointment Queue</h4>
                    <form class="module-search" method="GET" action="{{ route('appointments.index') }}">
                        <input type="search" name="search" class="form-control" id="search" placeholder="Search appointments..." value="{{ request()->query('search') }}">
                        <button type="submit" class="btn btn-primary"><i class="mdi mdi-magnify mr-1"></i> Search</button>
                    </form>
                </div>

                <div class="table-responsive">
    <table class="table table-centered mb-0">
        <thead class="thead-light">
            <tr>
                <th style="width: 20px;">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck1">
                        <label class="custom-control-label" for="customCheck1">&nbsp;</label>
                    </div>
                </th>
                <th>ID</th>
                <th>Patient's Name</th>
                <th>Reason</th>
                <th>Date</th>
                <th>Time</th>
                <th>Status</th>
                <th>Doctor's Name</th>
                <th style="width: 125px;">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($appointments as $appointment)
                <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck{{ $appointment->id }}">
                            <label class="custom-control-label" for="customCheck{{ $appointment->id }}"></label>
                        </div>
                    </td>
                    <td>{{ $appointment->id }}</td>
                    <td>{{ $appointment->patient ? $appointment->patient->name : 'N/A' }}</td>
                    <td>{{ $appointment->reason }}</td>
                    <td>{{ $appointment->date }}</td>
                    <td>{{ $appointment->time }}</td>
                    <td><span class="status-pill">{{ $appointment->status }}</span></td>
                    <td>{{ $appointment->doctor ? $appointment->doctor->name : 'N/A' }}</td>
                    <td>
                        <div class="btn-group">
                            <a href="{{ route('appointments.edit', ['appointment' => $appointment->id]) }}" class="dropdown-item">
                                <i class="mdi mdi-pencil font-size-16 text-success me-1"></i> Edit
                            </a>
                                <form id="delete-form-{{ $appointment->id }}" action="{{ route('appointments.destroy', ['appointment' => $appointment->id]) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                        <button type="button" class="dropdown-item" onclick="showDeleteConfirmation({{ $appointment->id }})">
                                            <i class="mdi mdi-trash-can font-size-16 text-danger me-1"></i> Delete
                                        </button>
                                                    
                                </form>
                        </div>
                     </td>
   
                    <!-- <td>
                        <div class="btn-group">
                            @can('update', $appointment)
                                <a href="{{ route('appointments.edit', ['appointment' => $appointment->id]) }}" class="dropdown-item">
                                    <i class="mdi mdi-pencil font-size-16 text-success me-1"></i> Edit
                                </a>
                            @endcan
                        </div>
                    </td> -->

                                        

                                    

                    
                </tr>
            @endforeach
        </tbody>
    </table>
</div>


                {{ $appointments->links() }}
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col -->
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    // Show delete confirmation using SweetAlert
    function showDeleteConfirmation(appointmentId) {
        Swal.fire({
            title: 'Confirm Deletion',
            text: 'Are you sure you want to delete this Appointment?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#dc3545',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Delete',
            cancelButtonText: 'Cancel',
        }).then((result) => {
            if (result.isConfirmed) {
                // Submit the delete form if user confirms
                document.getElementById('delete-form-' + appointmentId).submit();
            }
        });
    }
</script>
@endsection
