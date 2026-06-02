<?php
session_start();

echo json_encode([
    'status' => 'ok',
    'time' => time(),
    'session_id' => session_id()
]);
?>
