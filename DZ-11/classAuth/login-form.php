<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
    </head>
    <body>
        <h4>Login</h4>
        <h6>Put your credentials to login</h6>
        <form action="bootstrap.php" method="post" enctype="application/x-www-form-urlencoded">
            <!-- Email -->
            <label for="email">Email</label><br>
            <input type="email" name="email-login" id="email" value=""placeholer="Put your email" required autofocus><br><br>
            <!-- Password -->
            <label for="password">Password</label><br>
            <input type="password" name="password-login" id="password" value="" placeholder="Put your password">
            <!-- Submit -->
            <input type="submit" name="btn-login" value="submit">
        </form>
    </body>
</html>