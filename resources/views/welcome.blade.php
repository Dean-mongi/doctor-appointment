<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="A clearer way to coordinate appointments, care teams, patients and pharmacy operations.">
    <title>Care, coordinated | Doctor Appointment System</title>
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/icons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/app.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/doctorapp-ui.css') }}">
</head>
<body class="da-landing">
    <header class="landing-header">
        <nav class="landing-nav" aria-label="Main navigation">
            <a class="landing-brand" href="{{ route('home') }}">
                <span class="landing-brand-mark"><i class="mdi mdi-stethoscope" aria-hidden="true"></i></span>
                <span>Care<span class="landing-brand-light">Desk</span></span>
            </a>
            <button class="landing-menu-toggle" type="button" aria-expanded="false" aria-controls="landing-menu" aria-label="Toggle navigation">
                <i class="mdi mdi-menu" aria-hidden="true"></i>
            </button>
            <div class="landing-menu" id="landing-menu">
                <a href="#platform">Platform</a>
                <a href="#workflow">How it works</a>
                <a href="#teams">For care teams</a>
                @auth
                    <a class="landing-login" href="{{ route('dashboard') }}">Go to dashboard <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>
                @else
                    <a class="landing-login" href="{{ route('login') }}">Staff sign in <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>
                @endauth
            </div>
        </nav>
    </header>

    <main>
        <section class="landing-hero">
            <div class="landing-hero-inner">
                <div class="landing-copy">
                    <div class="landing-eyebrow"><span></span> A calmer way to run care</div>
                    <h1>Better coordination.<br><em>More time for care.</em></h1>
                    <p>Bring appointments, patient records, clinical teams and pharmacy operations into one clear workspace.</p>
                    <div class="landing-actions">
                        @auth
                            <a class="landing-primary" href="{{ route('dashboard') }}">Open your dashboard <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>
                        @else
                            <a class="landing-primary" href="{{ route('login') }}">Sign in to your workspace <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>
                        @endauth
                        <a class="landing-secondary" href="#platform">Explore the platform <i class="mdi mdi-chevron-down" aria-hidden="true"></i></a>
                    </div>
                    <div class="landing-assurance"><i class="mdi mdi-shield-check-outline" aria-hidden="true"></i> Secure access for your care team</div>
                </div>
                <div class="landing-visual" aria-label="Care operations workspace preview">
                    <div class="visual-glow"></div>
                    <div class="visual-card visual-card-main">
                        <div class="visual-topline"><span class="visual-dot"></span><span>Today at a glance</span><i class="mdi mdi-dots-horizontal" aria-hidden="true"></i></div>
                        <div class="visual-date">Your care team, in sync</div>
                        <div class="visual-stat-row">
                            <div class="visual-stat"><span>Appointments</span><strong>Today</strong><small><i class="mdi mdi-calendar-check" aria-hidden="true"></i> One shared schedule</small></div>
                            <div class="visual-stat visual-stat-teal"><span>Care team</span><strong>Connected</strong><small><i class="mdi mdi-account-multiple-outline" aria-hidden="true"></i> Doctors &amp; staff</small></div>
                        </div>
                        <div class="visual-activity-title">One connected workflow</div>
                        <div class="visual-activity"><span class="activity-icon activity-blue"><i class="mdi mdi-calendar-clock" aria-hidden="true"></i></span><span><b>Appointments</b><small>Coordinate the day's schedule</small></span><i class="mdi mdi-check-circle-outline activity-check" aria-hidden="true"></i></div>
                        <div class="visual-activity"><span class="activity-icon activity-green"><i class="mdi mdi-account-heart-outline" aria-hidden="true"></i></span><span><b>Patients &amp; doctors</b><small>Keep essential details together</small></span><i class="mdi mdi-check-circle-outline activity-check" aria-hidden="true"></i></div>
                        <div class="visual-activity"><span class="activity-icon activity-amber"><i class="mdi mdi-pill" aria-hidden="true"></i></span><span><b>Pharmacy operations</b><small>See activity across your service</small></span><i class="mdi mdi-check-circle-outline activity-check" aria-hidden="true"></i></div>
                    </div>
                    <div class="visual-note"><span class="note-icon"><i class="mdi mdi-heart-pulse" aria-hidden="true"></i></span><span><b>One workspace</b><small>Clearer day-to-day operations</small></span></div>
                </div>
            </div>
            <div class="landing-hero-wash"></div>
        </section>

        <section class="landing-platform" id="platform">
            <div class="landing-section-heading">
                <span class="section-kicker">BUILT AROUND YOUR WORK</span>
                <h2>The essentials, connected.</h2>
                <p>Less switching between tasks. A shared view of the work that keeps care moving.</p>
            </div>
            <div class="landing-feature-grid">
                <article class="landing-feature"><span class="feature-icon feature-blue"><i class="mdi mdi-calendar-month-outline" aria-hidden="true"></i></span><h3>Appointments</h3><p>Review, create and manage appointments from a single schedule.</p></article>
                <article class="landing-feature"><span class="feature-icon feature-teal"><i class="mdi mdi-doctor" aria-hidden="true"></i></span><h3>Care teams</h3><p>Keep doctor and patient information accessible to the people who need it.</p></article>
                <article class="landing-feature"><span class="feature-icon feature-orange"><i class="mdi mdi-medication-outline" aria-hidden="true"></i></span><h3>Pharmacy</h3><p>Coordinate pharmacy records and activity alongside the wider workflow.</p></article>
                <article class="landing-feature"><span class="feature-icon feature-purple"><i class="mdi mdi-chart-box-outline" aria-hidden="true"></i></span><h3>Useful reporting</h3><p>Bring key operational information together to support informed decisions.</p></article>
            </div>
        </section>

        <section class="landing-workflow" id="workflow">
            <div class="workflow-copy"><span class="section-kicker">SIMPLE BY DESIGN</span><h2>A clear view of the work ahead.</h2><p>Move from the day's schedule to the records and reports your team relies on, with navigation designed to stay familiar across screens.</p>
                <ul><li><i class="mdi mdi-check-circle-outline" aria-hidden="true"></i> Find core work areas quickly</li><li><i class="mdi mdi-check-circle-outline" aria-hidden="true"></i> Review recent activity at a glance</li><li><i class="mdi mdi-check-circle-outline" aria-hidden="true"></i> Keep your workspace usable on mobile</li></ul>
            </div>
            <div class="workflow-panel" aria-hidden="true"><div class="workflow-panel-head"><span class="workflow-avatar"><i class="mdi mdi-hospital-building"></i></span><span><b>Care operations</b><small>One connected workspace</small></span><i class="mdi mdi-menu workflow-menu-icon"></i></div><div class="workflow-line"><span class="workflow-line-icon"><i class="mdi mdi-calendar-check"></i></span><span><b>Appointments</b><small>Schedule &amp; status</small></span><i class="mdi mdi-chevron-right"></i></div><div class="workflow-line"><span class="workflow-line-icon teal"><i class="mdi mdi-account-group-outline"></i></span><span><b>Patients &amp; doctors</b><small>People &amp; records</small></span><i class="mdi mdi-chevron-right"></i></div><div class="workflow-line"><span class="workflow-line-icon amber"><i class="mdi mdi-pill"></i></span><span><b>Pharmacy</b><small>Service activity</small></span><i class="mdi mdi-chevron-right"></i></div><div class="workflow-line"><span class="workflow-line-icon purple"><i class="mdi mdi-chart-line"></i></span><span><b>Reports</b><small>Operational overview</small></span><i class="mdi mdi-chevron-right"></i></div></div>
        </section>

        <section class="landing-cta" id="teams"><div><span class="section-kicker">READY WHEN YOU ARE</span><h2>Make space for better coordination.</h2><p>Sign in to access your team's care operations workspace.</p></div>
            @auth<a class="landing-primary" href="{{ route('dashboard') }}">Go to dashboard <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>@else<a class="landing-primary" href="{{ route('login') }}">Staff sign in <i class="mdi mdi-arrow-right" aria-hidden="true"></i></a>@endauth
        </section>
    </main>
    <footer class="landing-footer"><a class="landing-brand" href="{{ route('home') }}"><span class="landing-brand-mark"><i class="mdi mdi-stethoscope" aria-hidden="true"></i></span><span>Care<span class="landing-brand-light">Desk</span></span></a><span>Thoughtful tools for coordinated care.</span><span>&copy; {{ date('Y') }} Doctor Appointment System</span></footer>
    <script>
        (() => {
            const toggle = document.querySelector('.landing-menu-toggle');
            const menu = document.getElementById('landing-menu');
            toggle.addEventListener('click', () => {
                const expanded = toggle.getAttribute('aria-expanded') === 'true';
                toggle.setAttribute('aria-expanded', String(!expanded));
                menu.classList.toggle('is-open', !expanded);
            });
            menu.querySelectorAll('a').forEach((link) => link.addEventListener('click', () => {
                toggle.setAttribute('aria-expanded', 'false');
                menu.classList.remove('is-open');
            }));
        })();
    </script>
</body>
</html>
