<!DOCTYPE html>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="http://getbootstrap.com/favicon.ico">

        <title>[@title]</title>

        <!-- Bootstrap core CSS -->
        <link href="/[@BASE_URL]assets/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="/[@BASE_URL]assets/css/dashboard.css" rel="stylesheet">
    </head>

    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="/[@BASE_URL]">Sunrise</a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/[@BASE_URL]index.php">All products</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="/[@BASE_URL]help.php">Help</a>
                        </li>
                    </ul>

                </div>
            </nav>
        </header>

        <div class="container-fluid">
            <div class="row">

                <main role="main" class="col-sm-12 col-md-12 col-lg-12 pt-3 ml-sm-auto">
                	[@content]
                </main>

            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="/[@BASE_URL]assets/js/jquery.min.js"></script>
        <script src="/[@BASE_URL]assets/js/popper.min.js"></script>
        <script src="/[@BASE_URL]assets/js/bootstrap.min.js"></script>

    </body>
</html>