@extends('layouts.app')

@section('main')

<div class="module-page pharmacy-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">Medication Flow</div>
                <h2>Hospital Pharmacy</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Track medicines, patient billing, prescribing doctors, and transaction details with room for export workflows.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    <a href="{{ route('pharmacies.create') }}" class="btn"><i class="mdi mdi-medical-bag mr-1"></i> Add Pharmacy</a>
                    <button id="download-pdf" type="button" class="btn"><i class="mdi mdi-file-pdf-box mr-1"></i> PDF</button>
                    <button id="download-excel" type="button" class="btn"><i class="mdi mdi-file-excel-box mr-1"></i> Excel</button>
                </div>
            </div>
        </div>
    </div>

<div class="row">
    <div class="col-12">
        <div class="card module-panel">
            <div class="card-body">
                <div class="module-toolbar">
                    <h4 class="header-title mb-0">Pharmacy Transactions</h4>
                    <form class="module-search">
                        <input type="search" class="form-control" id="inputPassword2" placeholder="Search medicines or patients...">
                        <button type="button" class="btn btn-primary"><i class="mdi mdi-magnify mr-1"></i> Search</button>
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
                                <th>Contact</th>
                                <th>Medicine</th>
                                <th>Descriptions</th>
                                <th>Amount</th>
                                <th>Doctor's Name</th>
                                <th style="width: 125px;">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($pharmacies as $pharmacy)
                            <tr>
                                <td>
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="customCheck2">
                                        <label class="custom-control-label" for="customCheck2">&nbsp;</label>
                                    </div>
                                </td>
                                <td>HSPH00{{ $pharmacy->id }}</td>
                                <td>{{ $pharmacy->patient->name }}</td>
                                <td>{{ $pharmacy->contact }}</td>
                                <td>{{ $pharmacy->medicine}}</td>
                                <td>{{ $pharmacy->description }}</td>
                                <td><span class="status-pill">{{ number_format($pharmacy->amount, 2) }} TZS</span></td>
                                <td>Dr. {{ $pharmacy->doctor->name }}</td>
                                <td>
                                        <div class="btn-group">
                                            <a href="{{ route('pharmacies.edit', $pharmacy->id) }}" class="btn btn-primary btn-sm">Edit</a>
                                            <form action="{{ route('pharmacies.destroy', $pharmacy->id) }}" method="POST" style="display: inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')">Delete</button>
                                            </form>
                                        </div>
                                    </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col -->
</div>
<!-- end row --> 
</div>

@endsection
