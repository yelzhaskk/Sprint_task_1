<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Book Hub</title>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%
            boolean online = true;
            if(online){
        %>
            <div class="container mt-3">
                <div class="row">
                    <div class="col-3 mx-auto">
                        <%
                            for(int i=0;i<10;i++){
                        %>
                            <div class="card">
                                <img src="https://picsum.photos/id/1/300/300" class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">Serik Berikov</h5>
                                    <a href="#" class="btn btn-primary">Text Messages</a>
                                </div>
                            </div>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>
        <%
            }else{
        %>
            <div class="text-center">
                <h1>SITE IS OFFLINE</h1>
            </div>
        <%
            }
        %>
    </body>
</html>
