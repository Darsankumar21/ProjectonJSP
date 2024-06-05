<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <script>
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <%
        String message = request.getParameter("message");
        if (message != null) {
    %>
    <script>
        showAlert('<%= message %>');
    </script>
    <%
        }
    %>
</body>
</html>
