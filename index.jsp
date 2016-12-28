<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AnimeKu</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>
    <%@ include file="navigation.jsp"%>

    <header id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner">
            <div class="item active">
                <div class="fill"><img width="100%" height="350" src="images/awal.jpg"></div>
                <div class="carousel-caption">
                    <h2>Top upcoming anime winter 2017</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill"><img  width="100%" height="320" src="images/awal1.jpg"></div>
                <div class="carousel-caption">
                    <h2>Top upcoming anime winter 2017</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill"> <img width="100%" height="350"src="images/home2.jpg"> </div>
                <div class="carousel-caption">
                    <h2>Top upcoming anime winter 2017</h2>
                </div>
            </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Selamat Datang di AnimeKu
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i>Anime</h4>
                    </div>
                    <div class="panel-body">
                        <p>DAFTAR ANIME BAHASA INDONESIA</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Music </h4>
                    </div>
                    <div class="panel-body">
                        <p>DAFTAR MUSIK ANIME</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> Video </h4>
                    </div>
                    <div class="panel-body">
                        <p>DAFTAR VIDEO</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Anime Musim Ini</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details">
                    <img width="700" height="450" class="img-responsive img-portfolio img-hover" src="images/ajin.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details"> <!--- ini klo diklik tampilin detail anime -->
                    <img width="700" height="450" class="img-responsive img-portfolio img-hover" src="images/fuwe.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details">
                    <img width="700" height="450" class="img-responsive img-portfolio img-hover" src="images/fuwe.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details">
                    <img class="img-responsive img-portfolio img-hover"  src="images/Logo.png" width="700px" height="450px"  alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details">
                    <img class="img-responsive img-portfolio img-hover"  src="images/Logo.png" width="700px" height="450px"  alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="index.jsp?ID= ambil id terus tembak ke details">
                    <img class="img-responsive img-portfolio img-hover"  src="images/Logo.png" width="700px" height="450px"  alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">10 ANIME TERPOPULER</h2>
            </div>
            <div class="col-md-6">
                <p>10 ANIME TERPOPULER</p>
                <ul>
                    <li><strong>Kimi no na wa</strong>
                    </li>
                    <li>Rezero</li>
                    <li>Naruto</li>
                    <li>Working!!! </li>
                    <li>One Piece</li>
                    <li>AJIN</li>
                    <li>Working!! </li>
                    <li>Working! </li>
                    <li>K-on</li>
                    <li>AJIN</li>
                </ul>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="images/Logo.png" width="700px" height="450px" alt="">
            </div>
        </div>


        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; ANIMEKU</p>
                </div>
            </div>
        </footer>

    </div>

    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
