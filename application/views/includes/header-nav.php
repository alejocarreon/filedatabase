
<?php

                         $query = $this->Module->session_username($this->session->userdata('user_session'));
                       foreach ($query->result() as $row) { $username = $row->fname . ' '.$row->lastname; }
?>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <img src="<?php echo site_url("images/scrubbed-header.png"); ?>" class="nav-logo" style="height:50px;">
        <ul class="nav navbar-nav navbar-right">
            <li id=fat-menu class=dropdown>
                <a href="#" class="dropdown-toggle" id="drop3" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-user " aria-hidden="true"></i>
                    <?php
                    echo $username;
                    ?>
                    <span class='caret'></span>
                </a>
                <ul class=dropdown-menu aria-labelledby="drop3">
                    <li>
                        <a href='<?php echo  base_url(). 'settings';?>' class="text-right">
                            SETTINGS <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                    <li role=separator class=divider></li>
                    <li><a href="#" class="logout-btn text-right">LOGOUT <i class="fa fa-sign-out " aria-hidden="true"></i></a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
