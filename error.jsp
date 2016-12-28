<% if(request.getParameter("err") != null){ %>
    <div class="alert alert-danger">
        <%= request.getParameter("err") %>
    </div>
<% } %>
