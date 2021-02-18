# Tentang Aplikasi

Aplikasi absensi karyawan untuk saat ini sangat banyak sekali dibutuhkan dalam organiasai maupun perusahaaan. Semakin maraknya kasus covid-19, mewajibkan banyak pekerja yang harus melakukan pekerjaan dari rumah atau work from home (WFH). Absensi merupakan salah satu hal terpenting di masa pandemi saat melakukan WFH. Semakin canggihnya teknologi seiring perkembangan jaman, bermunculan sebuah aplikasi yang berguna untuk kedepannya. Olehkarena itu maka dibangunlah sebuah aplikasi absensi berbasis website dengan menggunakan php mysql.

## Fitur atau Komponen dalam Aplikasi Absensi Karyawan :

-Halaman Utama

-Manajemen Absen

-Fitur Login

-Lainnya

### Dapat melakukan olah data sebagai berikut :

-Data Karyawan

-Data Absensi

##  Panduan Instalasi :

1. Menggunakan server **xampp**, pergunakan **php 5.6** atau **versi 7.3** ke atas

2. Menggunakan text editor untuk melakukan editing koding dapat mengunakan visual studio code ataupun text editor lainnya

3. Pindahkan folder .rar Source Code PHP Apliasi Absensi Karyawan Berbasis Web yang telah didownload kedalam direktori c:/xampp/htdocs

4. Membuka web browser, kemudian ketikkan localhost/phpmyadmin/ untuk membuat database

5. Membuat database dengan nama "absensi", lalu pilih import database. Lokasi database terdapat pada folder database dengan format .sql

6. Melakukan pengaturan koneksi database dengan file koneksi di application/config/database.php dengn pengaturan sebagai berikut:

`'hostname' => 'localhost',`

`'username' => 'root',`

`'password' => ' ',`

`'database' => 'absensi',`

`'dbdriver' => 'mysqli',`
	
**Untuk menjalankan aplikasi dapat mengetikkan localhost/nama_aplikasi. Aplikasi siap dijalankan**


