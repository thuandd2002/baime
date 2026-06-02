<?php

header("X-Frame-Options: SAMEORIGIN");
header("X-Content-Type-Options: nosniff");
header("Referrer-Policy: strict-origin-when-cross-origin");
header("X-XSS-Protection: 1; mode=block");

header("Strict-Transport-Security: max-age=31536000; includeSubDomains; preload");

header("Permissions-Policy: geolocation=(), camera=(), microphone=()");
/*
header("Content-Security-Policy: default-src 'self'; script-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com https://www.youtube.com https://www.gstatic.com https://connect.facebook.net https://maps.google.com https://maps.googleapis.com; style-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com https://fonts.googleapis.com; font-src 'self' https://cdnjs.cloudflare.com https://fonts.gstatic.com; img-src 'self' data: https:; frame-src https://www.youtube.com https://www.google.com https://www.facebook.com https://web.facebook.com/; connect-src 'self' https://cdnjs.cloudflare.com https://maps.googleapis.com; object-src 'none'; base-uri 'self'; form-action 'self';frame-ancestors 'self';");

*/
ini_set('session.use_strict_mode', 1);

session_set_cookie_params([
    'lifetime' => 0,
    'path' => '/',
    'secure' => true,
    'httponly' => true,
    'samesite' => 'Lax'
]);

session_start();

if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}