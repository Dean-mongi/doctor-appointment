<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Secure sign in for the Doctor Appointment System care operations workspace.">
    <title>Staff sign in | Doctor Appointment System</title>
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/icons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/app.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/doctorapp-ui.css') }}">
</head>
<body class="da-login-page">
    <main class="login-shell">
        <a class="login-home-brand" href="{{ route('home') }}">
            <span class="login-brand-mark"><i class="mdi mdi-stethoscope" aria-hidden="true"></i></span>
            <span>Care<span>Desk</span></span>
        </a>

        <section class="login-card" aria-label="Staff sign in">
            <aside class="login-intro">
                <div>
                    <p class="login-eyebrow">DOCTOR APPOINTMENT SYSTEM</p>
                    <h1>Your care team,<br>working in sync.</h1>
                    <p class="login-intro-copy">A secure workspace for the people coordinating appointments, patients and day-to-day care.</p>
                </div>
                <div class="login-benefits">
                    <div><span><i class="mdi mdi-calendar-check" aria-hidden="true"></i></span><p><b>Appointments</b><small>Keep schedules clear and coordinated</small></p></div>
                    <div><span><i class="mdi mdi-account-multiple-outline" aria-hidden="true"></i></span><p><b>Care teams</b><small>Bring doctors and patient records together</small></p></div>
                    <div><span><i class="mdi mdi-shield-check-outline" aria-hidden="true"></i></span><p><b>Secure access</b><small>Sign in to your authorized workspace</small></p></div>
                </div>
                <div class="login-intro-foot"><i class="mdi mdi-heart-pulse" aria-hidden="true"></i> Thoughtful tools for coordinated care</div>
            </aside>

            <div class="login-form-side">
                <a class="login-back-link" href="{{ route('home') }}"><i class="mdi mdi-arrow-left" aria-hidden="true"></i> Homepage</a>
                <div class="login-form-content">
                    <div class="login-heading-icon"><i class="mdi mdi-lock-outline" aria-hidden="true"></i></div>
                    <p class="login-form-kicker">WELCOME BACK</p>
                    <h2>Sign in to your account</h2>
                    <p class="login-form-subtitle">Enter your staff account details to continue.</p>

                    @if ($errors->any())
                        <div class="login-error" role="alert"><i class="mdi mdi-alert-circle-outline" aria-hidden="true"></i><span>{{ $errors->first() }}</span></div>
                    @endif

                    <form method="POST" action="{{ route('login') }}" class="login-form">
                        @csrf
                        <div class="login-field">
                            <label for="email">Email address</label>
                            <div class="login-input-wrap"><i class="mdi mdi-email-outline" aria-hidden="true"></i><input id="email" name="email" type="email" value="{{ old('email') }}" placeholder="name@hospital.com" required autofocus autocomplete="username"></div>
                        </div>
                        <div class="login-field">
                            <div class="login-label-row"><label for="password">Password</label><a href="{{ route('password.request') }}">Forgot password?</a></div>
                            <div class="login-input-wrap"><i class="mdi mdi-lock-outline" aria-hidden="true"></i><input id="password" name="password" type="password" placeholder="Enter your password" required autocomplete="current-password"><button class="login-password-toggle" type="button" aria-label="Show password" aria-pressed="false"><i class="mdi mdi-eye-outline" aria-hidden="true"></i></button></div>
                        </div>
                        <label class="login-remember" for="remember_me"><input id="remember_me" type="checkbox" name="remember" value="1" {{ old('remember') ? 'checked' : '' }}><span>Keep me signed in on this device</span></label>
                        <button class="login-submit" type="submit">Sign in <i class="mdi mdi-arrow-right" aria-hidden="true"></i></button>
                    </form>
                    <p class="login-register">New to the system? <a href="{{ route('register') }}">Create an account</a></p>
                </div>
                <p class="login-legal">&copy; {{ date('Y') }} Doctor Appointment System</p>
            </div>
        </section>
    </main>
    <script>
        (() => {
            const button = document.querySelector('.login-password-toggle');
            const password = document.getElementById('password');
            button.addEventListener('click', () => {
                const show = password.type === 'password';
                password.type = show ? 'text' : 'password';
                button.setAttribute('aria-pressed', String(show));
                button.setAttribute('aria-label', show ? 'Hide password' : 'Show password');
                button.innerHTML = `<i class="mdi ${show ? 'mdi-eye-off-outline' : 'mdi-eye-outline'}" aria-hidden="true"></i>`;
            });
        })();
    </script>
</body>
</html>
