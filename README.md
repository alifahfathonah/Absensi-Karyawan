# Tentang Aplikasi

Aplikasi absensi karyawan untuk saat ini sangat banyak sekali dibutuhkan dalam organiasai maupun perusahaaan. Semakin maraknya kasus covid-19, mewajibkan banyak pekerja yang harus melakukan pekerjaan dari rumah atau work from home (WFH). Absensi merupakan salah satu hal terpenting di masa pandemi saat melakukan WFH. Semakin canggihnya teknologi seiring perkembangan jaman, bermunculan sebuah aplikasi yang berguna untuk kedepannya. Olehkarena itu maka dibangunlah sebuah aplikasi absensi berbasis website dengan menggunakan php mysql.

## Fitur atau Komponen dalam Aplikasi Absensi Karyawan :

-Halaman Utama

-Manajemen Absen

-Fitur Login

-Export PDF

### Dapat melakukan olah data sebagai berikut :

-Data Karyawan

-Data Absensi

##  Panduan Instalasi :

1. Menggunakan server **xampp**, pergunakan **php 5.6** atau **versi 7.3** ke atas

2. Menggunakan text editor untuk melakukan editing koding dapat mengunakan visual studio code ataupun text editor lainnya

3. Pindahkan _folder .rar_ Source Code _PHP_ Apliasi Absensi Karyawan Berbasis Web yang telah didownload kedalam direktori _c:/xampp/htdocs_

4. Membuka web browser, kemudian ketikkan _localhost/phpmyadmin/_ untuk membuat database

5. Membuat database dengan nama "absensi", lalu pilih _import database_. Lokasi database terdapat pada folder database dengan format _.sql_

6. Melakukan pengaturan koneksi database dengan file koneksi di _application/config/database.php_ dengn pengaturan sebagai berikut:

`'hostname' => 'localhost',`

`'username' => 'root',`

`'password' => ' ',`

`'database' => 'absensi',`

`'dbdriver' => 'mysqli',`
	
**Untuk menjalankan aplikasi dapat mengetikkan localhost/nama_aplikasi. Aplikasi siap dijalankan**


