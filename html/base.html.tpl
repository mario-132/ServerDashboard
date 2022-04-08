<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <title>Home</title>

    <!-- MDB -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"/>
    <link rel="stylesheet" href="files/css/mdb.dark.min.css"/>
    <link rel="stylesheet" href="files/base.css"/>
  </head>
  <body>

    <!-- Start your project here-->
    <nav class="navbar dtopbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img
                    src="files/img/ubuntu-logo.png"
                    class="me-2"
                    height="30"
                    alt="Logo"
                    loading="lazy"
                />
                <small>{{.PageTitle}}</small>
            </a>
        </div>
    </nav>
    <div class="dpagecontainer">
        <div class="dsidenavbackgroundstick">
        </div>
        <div class="dsidenav">
            <a class="btn dsideitem" href="/">
                <i class="fas fa-tachometer-alt-fast diconspacer"></i> Dashboard
            </a>
            <a class="btn dsideitem" href="/disks">
                <i class="fa-solid fa-hard-drive diconspacer"></i> Disks
            </a>
            <a class="btn dsideitem">
                <i class="fas fa-cog diconspacer"></i> Settings
            </a>
            <a class="btn dsideitem">
                <i class="fas fa-terminal diconspacer"></i> Terminal
            </a>
        </div>
        <div class="dpagecontent">
            {{ .PageContent }}
        </div>
    </div>
    
    <!-- End your project here-->

    <!-- MDB -->
    <script type="text/javascript" src="files/js/mdb.min.js"></script>
  </body>
</html>