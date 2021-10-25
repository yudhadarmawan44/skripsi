<style type="text/css">
    .dropdown-submenu {
    position:relative;
}
.dropdown-submenu>.dropdown-menu {
    top:0;
    left:100%;
    margin-top:-6px;
    margin-left:-1px;
    -webkit-border-radius:0 6px 6px 6px;
    -moz-border-radius:0 6px 6px 6px;
    border-radius:0 6px 6px 6px;
}
.dropdown-submenu:hover>.dropdown-menu {

    display:block;
}
.dropdown-submenu>a:after {
    display:block;
    content:" ";
    float:right;
    width:0;
    height:0;
    border-color:transparent;
    border-style:solid;
    border-width:5px 0 5px 5px;
    border-left-color:#cccccc;
    margin-top:5px;
    margin-right:-10px;
}
.dropdown-submenu:hover>a:after {
    border-left-color:#ffffff;
}
.dropdown-submenu.pull-left {
    float:none;
}
.dropdown-submenu.pull-left>.dropdown-menu {
    left:-100%;
    margin-left:10px;
    -webkit-border-radius:6px 0 6px 6px;
    -moz-border-radius:6px 0 6px 6px;
    border-radius:6px 0 6px 6px;
}

</style>


<!-- Sidebar -->
<ul class="sidebar navbar-nav">
    <li class="nav-item <?php echo $this->uri->segment(1) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin') ?>">
         <i class="fas fa-hospital-alt" aria-hidden="true"></i>
                     <span>Home</span>
        </a>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(1) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin/datarks/add') ?>">
        <i class="fa fa-plus-circle" aria-hidden="true"></i>
            <span>Tambah Data Detail Permintaan Rumah Sakit</span>
        </a>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(1) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin/datauji/add') ?>">
        <i class="fa fa-plus-circle" aria-hidden="true"></i>
            <span>Tambah Data Darah</span>
        </a>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(2) == 'stopword' ? 'active' : '' ?>">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-file-alt"></i>
            <span>Data Darah </span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a style="font-size:15px;"class="dropdown-item" href="<?php echo site_url('admin/datauji/golongan_a') ?>">Data Darah A </a>
            <a style="font-size:15px;"class="dropdown-item" href="<?php echo site_url('admin/datauji/golongan_b') ?>">Data Darah B</a>
            <a style="font-size:15px;"class="dropdown-item" href="<?php echo site_url('admin/datauji/golongan_o') ?>">Data Darah O </a>
            <a style="font-size:15px;"class="dropdown-item" href="<?php echo site_url('admin/datauji/golongan_ab') ?>">Data Darah AB</a>
        </div>
    </li>

    <li class="nav-item <?php echo $this->uri->segment(1) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin/filter') ?>">
        <i class="fas fa-file-alt"></i>
            <span>Detail Data Permintaan Rumah Sakit</span>
        </a>
    </li>

</ul>




