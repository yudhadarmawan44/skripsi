<!DOCTYPE <!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>Hi, <?php echo $this->session->userdata('username') ?> </p>
<a href="<?php echo site_url('login/logout') ?>">Logout</a>
    
</body>
</html>
