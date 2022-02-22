<%@page import= "java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>population</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <!--<h1>${page_number}</h1>-->
        <!--<h1>${max}</h1>-->
        <%
            int page_number = (Integer) request.getAttribute("page_number");
            int count = (Integer) request.getAttribute("count");
        %>
        <div class=" container d-flex flex-row align-items-center justify-content-center flex-column  border p-4 vh-100 border border-light">
            <h2 class="text-muted w-100 border text-center p-3 bg-light" >World population record</h2>
            <table class="table table-striped table-primary  border border-light">
                <tr>
                    <th> Country name </th>
                    <th> Population </th>
                </tr>

                <%
                    HashMap<String, String> hm = (HashMap<String, String>) request.getAttribute("record");
                    for (Map.Entry<String, String> item : hm.entrySet()) {
                %>
                <tr>
                    <td><%=item.getKey().toUpperCase()%></td>
                    <td><%=item.getValue()%></td>
                </tr>
                <% }%>

            </table>
            <nav aria-label="...">
                <ul class="pagination">
                    <li class="page-item  <%=page_number == 1 ? "disabled" : ""%>" style="cursor: pointer;">
                        <a class="page-link fw-normal" href="Population?page=<%=page_number - 1%>&count=<%=count%>"> Previous</a>
                    </li>
                    <%
                        int rows = (Integer) request.getAttribute("rows_count");
                        for (int i = 1; i <= (rows / count) + 1; i++) {
                    %>
                    <li class="page-item <%=page_number == i ? "active" : ""%>"><a class="page-link" href="Population?page=<%=i%>&count=<%=count%>"><%=i%></a></li>
                        <%}%>
                    <li class="page-item <%=page_number == (rows / count) + 1 ? "disabled" : ""%>" style="cursor: pointer;">
                        <a class="page-link fw-normal" href="Population?page=<%=page_number + 1%>&count=<%=count%>">Next </a>
                    </li>
                </ul>
            </nav>


        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</html>
