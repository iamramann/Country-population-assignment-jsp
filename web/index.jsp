<%--
    Document   : index
    Created on : 19-Feb-2022, 11:49:01 pm
    Author     : abc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="d-flex flex-column align-items-center justify-content-center  border p-4 vh-100">
                <input class="my-3 w-50 form-control" id="input" type="text" value="" name="form_row_count" placeholder="Please enter the number of rows to be displayed"/>
                <a href="Population?page=1" id="link" class="btn btn-success p-2 mx-2 w-50">Get Population Record</a>
            </div>
        </div>
    </body>
    <script>
        const input = document.getElementById("input");
        const link = document.getElementById("link");
        link.addEventListener("click", (e) => {
            const value = input.value;
            const oldRef = link.getAttribute("href");
            console.log(oldRef);
            const queryString = oldRef + "&count=" + value;
            console.log(queryString);
            link.setAttribute("href", queryString);
            return true;
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>
