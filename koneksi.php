<?php
$host = 'localhost:8111';
$user = 'root';
$password = '';
$db = 'i-perpustakaan';

$koneksi = mysqli_connect($host, $user, $password, $db);

// Cek koneksi
if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
