<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
   

    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <title>Absensi Triplek</title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="<?= base_url('assets/vendor/font-awesome/css/font-awesome.min.css') ?>" rel="stylesheet" />
    

    <link href="<?= base_url('assets/css/bootstrap.min.css') ?>" rel="stylesheet" />
    <link href="<?= base_url('assets/css/light-bootstrap-dashboard.css?v=2.0.1') ?>" rel="stylesheet" />

    <link href="<?= base_url('assets/css/demo.css') ?>" rel="stylesheet" />

    <script>var BASEURL = '<?= base_url() ?>';</script>
    <?php check_absen_harian() ?>
</head>

<body>
    <div class="wrapper bg-white">
        <div class="sidebar" data-image="../assets/img/sidebar-5.jpg" data-color="black">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="<?= base_url() ?>" class="simple-text">
                        <img src="<?= base_url('assets/img/triplek.jpg') ?>" alt="" class="img-fluid">
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link text-white">
                            <h2 class="my-0 text-center"><label id="hours"><?= date('H') ?></label>:<label id="minutes"><?= date('i') ?></label>:<label id="seconds"><?= date('s') ?></label></h2>
                        </a>
                    </li>
                    <li class="nav-item <?= @$_active ?>">
                        <a class="nav-link" href="<?= base_url() ?>">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="nav-item <?= @$_active ?>">
                        <a class="nav-link" href="<?= base_url('user') ?>">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Profil</p>
                        </a>
                    </li>
                    <?php if(is_level('Manager')): ?>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('jam') ?>">
                                <i class="nc-icon nc-time-alarm"></i>
                                <p>Jam Kerja</p>
                            </a>
                        </li>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('divisi') ?>">
                                <i class="nc-icon nc-bag"></i>
                                <p>Divisi</p>
                            </a>
                        </li>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('karyawan') ?>">
                                <i class="nc-icon nc-circle-09"></i>
                                <p>Karyawan</p>
                            </a>
                        </li>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('absensi') ?>">
                                <i class="nc-icon nc-notes"></i>
                                <p>Absensi</p>
                            </a>
                        </li>
                    <?php else: ?>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('absensi/check_absen') ?>">
                                <i class="nc-icon nc-tag-content"></i>
                                <p class="d-inline">
                                    Absen
                                    <?php if($this->session->absen_warning == 'true'): ?>
                                        <span class="float-right ml-auto notification p-0 badge badge-danger"><i class="fa fa-exclamation"></i></span>
                                    <?php endif; ?>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item <?= @$_active ?>">
                            <a class="nav-link" href="<?= base_url('absensi/detail_absensi') ?>">
                                <i class="nc-icon nc-notes"></i>
                                <p>My Absensi</p>
                            </a>
                        </li>
                    <?php endif; ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('dashboard/logout') ?>">
                            <span>Log out <i class="nc-icon nc-button-power"></i></span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <div class="content">
                <div class="container-fluid">
                    <div id="alert">
                        <?php if(@$this->session->response): ?>
                            <div class="alert alert-<?= $this->session->response['status'] == 'error' ? 'danger' : $this->session->response['status'] ?> alert-dismissable fade show" role="alert">
                                <button class="close" aria-dismissable="alert">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <p><?= $this->session->response['message'] ?></p>
                            </div>
                        <?php endif; ?>
                    </div>
                    <?= $content ?>
                </div>
            </div>
            <footer class="footer-white-grey">
                <div class="container">
                    <nav>
                        <p class="copyright text-center text-black">
                            &copy; 2020 <a href="http://triplek.co.id">Triplek Taruna Armory</a>
                        </p>
                    </nav>
                </div>
            </footer>
        </div>
    </div>
</body>

<!--   Core JS Files   -->
<script src="<?= base_url('assets/js/core/jquery.min.js') ?>" type="text/javascript"></script>
<script src="<?= base_url('assets/js/core/popper.min.js') ?>" type="text/javascript"></script>
<script src="<?= base_url('assets/js/core/bootstrap.bundle.min.js') ?>" type="text/javascript"></script>

<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="<?= base_url('assets/js/plugins/bootstrap-switch.js') ?>"></script>
<!--  Notifications Plugin    -->
<script src="<?= base_url('assets/js/plugins/bootstrap-notify.js') ?>"></script>
<!-- SweetAlert -->
<script src="<?= base_url('assets/js/plugins/sweetalert.min.js') ?>"></script>

<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="<?= base_url('assets/js/light-bootstrap-dashboard.js?v=2.0.1') ?>" type="text/javascript"></script>

<!-- Main Js -->
<script src="<?= base_url('assets/js/main.js') ?>"></script>

<!-- Custom Script -->
<script>
    var hoursLabel = document.getElementById("hours");
    var minutesLabel = document.getElementById("minutes");
    var secondsLabel = document.getElementById("seconds");
    setInterval(setTime, 1000);

    function setTime() {
        secondsLabel.innerHTML = pad(Math.floor(new Date().getSeconds()));
        minutesLabel.innerHTML = pad(Math.floor(new Date().getMinutes()));
        hoursLabel.innerHTML = pad(Math.floor(new Date().getHours()));
    }

    function pad(val) {
        var valString = val + "";
        if (valString.length < 2) {
            return "0" + valString;
        } else {
            return valString;
        }
    }

    <?php if(@$this->session->absen_needed): ?>
        var absenNeeded = '<?= json_encode($this->session->absen_needed) ?>';
        <?php $this->session->sess_unset('absen_needed') ?>
    <?php endif; ?>
</script>


</html>