<link href="css/style.css" rel="stylesheet">


<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">ANIMEKU</a>
        </div>
        
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
            <%
                if(session.getAttribute("role") == null)
                {
            %>
                <li>
                    <a href="anime.jsp">Anime</a>
                </li>
                <li>
                    <a href="login.jsp">Login</a>
                </li>
                <li>
                    <a href="register.jsp">Register</a>
                </li>
                <li>
                    <a href="about.jsp">About</a>
                </li>
            <%    
                }
                else if(session.getAttribute("role").equals("admin"))
                {
            %>
                <li>
                    <a href="anime.jsp">Anime</a>
                </li>
                <li>
                    <a href="insert_anime.jsp">Insert Anime</a>
                </li>
                 <li>
                    <a href="#">Forum</a>
                </li>
                <li>
                    <a href="about.jsp">About</a>
                </li>
                <li>
                    <a href="controller/doLogout.jsp">Logout</a>
                </li>
            <%
                }
                else if(session.getAttribute("role").equals("member"))
                {
            %>
                <li>
                    <a href="anime.jsp">Anime</a>
                </li>
                <li>
                    <a href="#">Forum</a>
                </li>
                <li>
                    <a href="about.jsp">About</a>
                </li>
                 <li>
                    <a href="controller/doLogout.jsp">About</a>
                </li>
            <% } %>
            </ul>
        </div>
    </div>
</nav>