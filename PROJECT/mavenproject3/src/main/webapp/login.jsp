<%-- 
    Document   : login
    Created on : Nov 10, 2023, 9:42:30 AM
    Author     : valen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@400;500;600;700&family=Rubik&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="static/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="static/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="static/css/bootstrap.min.css" rel="stylesheet">
        <link href="static/css/style.css" rel="stylesheet">
    </head>
    <body>
        <form action="<%=request.getContextPath()%>/LoginControlleur" method="post">
            <div class="form-group">
                <label for="uname">User Name:</label> <input type="text"
                                                             class="form-control" id="username" placeholder="User Name"
                                                             name="username" required>
            </div>
            <div class="form-group">
                <label for="uname">Password:</label> <input type="password"
                                                            class="form-control" id="password" placeholder="Password"
                                                            name="password" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
            <a href="register.jsp">creer un compte</a>
    </body>
</html>
