@extends('layouts.app')

@section('main')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Notifications</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    @if($notifications->count() > 0)
                        <div class="list-group">
                            @foreach($notifications as $notification)
                                <div class="list-group-item">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h5 class="mb-1">{{ $notification->data['title'] ?? 'Notification' }}</h5>
                                        <small>{{ $notification->created_at->diffForHumans() }}</small>
                                    </div>
                                    <p class="mb-1">{{ $notification->data['message'] ?? '' }}</p>
                                    @if(!$notification->read_at)
                                        <small class="text-muted">Unread</small>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                        <div class="mt-3">
                            {{ $notifications->links() }}
                        </div>
                    @else
                        <p class="text-center">No notifications found.</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
