@extends('layouts.app')

@section('main')
<div class="module-page configuration-page">
    <div class="module-hero">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="module-kicker">System Configuration</div>
                <h2>Roles and Permissions</h2>
                <p class="mb-0" style="color: rgba(255,255,255,.82);">Shape who can view, create, edit, delete, and report across the hospital system.</p>
            </div>
            <div class="col-lg-5">
                <div class="module-actions">
                    <a href="{{ route('roles.create') }}" class="btn"><i class="mdi mdi-shield-plus mr-1"></i> Create Role</a>
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

                <div class="module-toolbar">
                    <h4 class="header-title mb-0">Access Matrix</h4>
                    <span class="text-muted">{{ $roles->count() }} configured roles</span>
                </div>

                <div class="table-responsive">
                <table class="table table-hover table-centered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Role Name</th>
                            <th>Permissions</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($roles as $role)
                            <tr>
                                <td>{{ $role->id }}</td>
                                <td>{{ $role->name }}</td>
                                <td>
                                    @foreach($role->permissions as $permission)
                                        <span class="permission-pill">{{ $permission->name }}</span>
                                    @endforeach
                                </td>
                                <td>
                                    <a href="{{ route('roles.edit', $role->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('roles.destroy', $role->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
@endsection
