<?php

define('_VALID_NVB', '1');

//http_response_code(404);
header("X-Robots-Tag: noindex, nofollow", true);


session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	
	// ===== ORIGIN CHECK =====
    //$allowed_origin = 'https://idemitsuq8.com.vn';
	$allowed_origin = 'https://'.$_SERVER['HTTP_HOST'];

    if (!empty($_SERVER['HTTP_ORIGIN'])) {
        if ($_SERVER['HTTP_ORIGIN'] !== $allowed_origin) {
            http_response_code(403);
            die('BAD_ORIGIN');
        }
    }

    // ===== REFERER FALLBACK =====
    if (!empty($_SERVER['HTTP_REFERER'])) {
        if (strpos($_SERVER['HTTP_REFERER'], $allowed_origin) !== 0) {
            http_response_code(403);
            die('BAD_REFERER');
        }
    }

    // ===== CSRF TOKEN CHECK =====

    $token = $_POST['csrf_token'] ?? '';

    if (
        empty($token) ||
        empty($_SESSION['csrf_token']) ||
        !hash_equals($_SESSION['csrf_token'], $token)
    ) {
        die('CSRF_BLOCKED');
    }

    // rotate token (khuyến nghị)
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

include_once("initcms.php");
include_once("lang/lang.php");


$lang = $_SESSION['lang'];
if ($lang == 'en') {
    $language = " AND lang='en' ";
} else {
    $language = " AND lang<>'en' ";
}


$page_arr = array(
    11 => "ajaxprovider",
    21 => "contact_submit",
    22 => "cart_submit",
    23 => "tuyendung_submit",
);
$page_idx = intval($_GET['page']);

if ($page_idx > 0) {
    
    $page_name = $page_arr[$page_idx];
    $pagePath = "modules/$page_name.php";
    if (file_exists($pagePath)) {
        include($pagePath);
    }
    
}



include("endcms.php");
?>