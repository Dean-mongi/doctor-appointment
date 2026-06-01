@extends('layouts.app')

@section('main')
<div class="module-page doctors-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">Care Team</div>
                <h2>Doctors</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Maintain specialists, contacts, qualifications, and working status with a compact clinical directory.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    <a href="{{ route('doctors.create') }}" class="btn"><i class="mdi mdi-doctor mr-1"></i> Add Doctor</a>
                    <button type="button" class="btn" id="download-pdf"><i class="mdi mdi-file-pdf-box mr-1"></i> PDF</button>
                    <button type="button" class="btn" id="download-excel"><i class="mdi mdi-file-excel-box mr-1"></i> Excel</button>
                </div>
            </div>
        </div>
    </div>

<div class="row">
    <div class="col-12">
        <div class="card module-panel">
            <div class="card-body">
                <div class="module-toolbar">
                    <h4 class="header-title mb-0">Doctor Directory</h4>
                    <form class="module-search" method="GET" action="{{ route('doctors.index') }}">
                        <input type="search" name="search" class="form-control" id="search" placeholder="Search doctors..." value="{{ request()->query('search') }}">
                        <button type="submit" class="btn btn-primary"><i class="mdi mdi-magnify mr-1"></i> Search</button>
                    </form>
                </div>

                <div class="table-responsive">
                    <table id="doctors-table" class="table table-centered mb-0">
                        <thead class="thead-light">
                            <tr>
                                <th>Photo</th>
                                <th>Doctor ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact</th>
                                <th>Address</th>
                                <th>Qualifications</th>
                                <th>Specialist</th>
                                <th>Status</th>
                                <th style="width: 125px;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($doctors as $doctor)
                                <tr>
                                    <td>
                                        <img src="{{ $doctor->avatar ? asset('storage/' . $doctor->avatar) : 'https://via.placeholder.com/50' }}" alt="Doctor Picture" class="rounded-circle" width="50" height="50">
                                    </td>
                                    <td>{{ $doctor->id }}</td>
                                    <td>{{ $doctor->name }}</td>
                                    <td>{{ $doctor->email }}</td>
                                    <td>{{ $doctor->contact }}</td>
                                    <td>{{ $doctor->address }}</td>
                                    <td>{{ $doctor->qualification }}</td>
                                    <td>{{ $doctor->specialty }}</td>
                                    <td><span class="status-pill">{{ $doctor->status }}</span></td>
                                    <td>
                                        <div class="btn-group">
                                            <a href="{{ route('doctors.edit', ['doctor' => $doctor->id]) }}" class="dropdown-item">
                                                <i class="mdi mdi-pencil font-size-16 text-success me-1"></i> Edit
                                            </a>
                                            <form id="delete-form-{{ $doctor->id }}" action="{{ route('doctors.destroy', ['doctor' => $doctor->id]) }}" method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="button" class="dropdown-item" onclick="showDeleteConfirmation({{ $doctor->id }})">
                                                    <i class="mdi mdi-trash-can font-size-16 text-danger me-1"></i> Delete
                                                </button>
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <!-- Pagination Links -->
                {{ $doctors->appends(request()->query())->links() }}
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col -->
</div>
<!-- end row -->
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const { jsPDF } = window.jspdf;
        const autoTable = window.jspdf.AutoTable;

        document.getElementById('download-pdf').addEventListener('click', () => {
            const doc = new jsPDF();
            const table = document.querySelector('#doctors-table');
            const rows = Array.from(table.querySelectorAll('tr'));
            const data = rows.map(row => Array.from(row.querySelectorAll('td, th')).map(cell => cell.textContent));

            doc.autoTable({
                head: [['Doctor ID', 'Name', 'Email', 'Contact', 'Address', 'Qualifications', 'Specialist', 'Status']],
                body: data.slice(1) // Remove header row if already included in head
            });

            doc.save('doctors.pdf');
        });

        document.getElementById('download-excel').addEventListener('click', () => {
            const table = document.getElementById('doctors-table');
            const wb = XLSX.utils.table_to_book(table, { sheet: "Doctors Entries" });
            XLSX.writeFile(wb, 'doctors.xlsx');
        });
    });

    // Show delete confirmation using SweetAlert
    function showDeleteConfirmation(doctorId) {
        Swal.fire({
            title: 'Confirm Deletion',
            text: 'Are you sure you want to delete this Doctor?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#dc3545',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Delete',
            cancelButtonText: 'Cancel',
        }).then((result) => {
            if (result.isConfirmed) {
                // Submit the delete form if user confirms
                document.getElementById('delete-form-' + doctorId).submit();
            }
        });
    }
</script>
@endsection
