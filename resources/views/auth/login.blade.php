<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Doctor Appointment System | Sign In</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}">
        <link href="{{ asset('assets/css/icons.min.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset('assets/css/app.min.css') }}" rel="stylesheet" type="text/css" id="light-style" />
        <link href="{{ asset('assets/css/app-dark.min.css') }}" rel="stylesheet" type="text/css" id="dark-style" />
        <link href="{{ asset('assets/css/doctorapp-ui.css') }}" rel="stylesheet" type="text/css" />
    </head>

    <body class="loading">
        <main class="auth-shell">
            <div class="container">
                <div class="row justify-content-center align-items-center">
                    <div class="col-xl-9 col-lg-10">
                        <div class="card auth-panel">
                            <div class="row no-gutters">
                                <div class="col-lg-5 auth-brand d-flex flex-column justify-content-between">
                                    <div>
                                        <div class="auth-brand-mark mb-4">
                                            <i class="mdi mdi-stethoscope"></i>
                                        </div>
                                        <p class="hero-kicker mb-2">Hospital Operations</p>
                                        <h2 class="mb-3">Welcome back to your care command center.</h2>
                                        <p class="mb-0" style="color: rgba(255,255,255,.82);">
                                            Manage appointments, doctors, patients, pharmacy activity, reports, and configuration from one secure workspace.
                                        </p>
                                    </div>

                                    <div class="mt-4">
                                        <div class="auth-feature"><i class="mdi mdi-calendar-check"></i><span>Live appointment tracking</span></div>
                                        <div class="auth-feature"><i class="mdi mdi-doctor"></i><span>Doctor and patient coordination</span></div>
                                        <div class="auth-feature"><i class="mdi mdi-chart-box-outline"></i><span>Clear operational reports</span></div>
                                    </div>
                                </div>

                                <div class="col-lg-7">
                                    <div class="card-body p-4 p-md-5">
                                        <div class="mb-4">
                                            <h4 class="text-dark font-weight-bold mb-1">Sign In</h4>
                                            <p class="text-muted mb-0">Use your email and password to continue.</p>
                                        </div>

                                        @if ($errors->any())
                                            <div class="alert alert-danger">
                                                {{ $errors->first() }}
                                            </div>
                                        @endif

                                        <form method="POST" action="{{ route('login') }}">
                                            @csrf

                                            <div class="form-group">
                                                <label for="email">Email address</label>
                                                <div class="input-group input-group-merge">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="mdi mdi-email-outline"></i></span>
                                                    </div>
                                                    <input class="form-control" name="email" type="email" id="email" required placeholder="Enter your email" value="{{ old('email') }}" autofocus autocomplete="username">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <a href="{{ route('password.request') }}" class="text-muted float-right"><small>Forgot password?</small></a>
                                                <label for="password">Password</label>
                                                <div class="input-group input-group-merge">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text"><i class="mdi mdi-lock-outline"></i></span>
                                                    </div>
                                                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required autocomplete="current-password">
                                                    <div class="input-group-append" data-password="false">
                                                        <div class="input-group-text">
                                                            <span class="password-eye"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group mb-4">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="remember_me" name="remember">
                                                    <label class="custom-control-label" for="remember_me">Remember me on this device</label>
                                                </div>
                                            </div>

                                            <button class="btn btn-primary btn-block py-2" type="submit">
                                                <i class="mdi mdi-login mr-1"></i> Log In
                                            </button>
                                        </form>

                                        <div class="text-center mt-4">
                                            <p class="text-muted mb-0">Don't have an account? <a href="{{ route('register') }}" class="font-weight-bold">Sign Up</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <p class="text-center text-white-50 mt-4 mb-0">
                            <script>document.write(new Date().getFullYear())</script> &copy; Dean John.
                        </p>
                    </div>
                </div>
            </div>
        </main>

        <script src="{{ asset('assets/js/vendor.min.js') }}"></script>
        <script src="{{ asset('assets/js/app.min.js') }}"></script>
    </body>
</html>
