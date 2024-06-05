<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <script>
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
    <h2>Register</h2>
    <form action="RegisterServlet" method="post">
        Username: <input type="text" name="username" required><br>
        Password: <input type="password" name="password" required><br>
        Email: <input type="email" name="email" required><br>
        <input type="submit" value="Register">
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
