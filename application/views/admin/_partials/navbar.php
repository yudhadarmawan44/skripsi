<nav class="navbar navbar-expand navbar-dark  static-top" style="background-color: red" >
    <a class="navbar-brand mr-1" href="<?php echo site_url('admin') ?>">PMI Yogyakarta</a>
    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
    </button>
    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
        </div>
    </form>
    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
        
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="<?php echo site_url() ?>"id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                aria-expanded="false">
                <i class="fas fa-user-circle fa-fw"></i> <?php echo $this->session->userdata('username') ?>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="<?php echo site_url() ?>" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </li>
    </ul>
</nav>
