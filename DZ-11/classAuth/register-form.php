<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>
    </head>
    <body>
        <h4>Register</h4>
        <h6>To register a new accout put your credentials below, please.</h6>
        <form action="bootstrap.php" method="post" enctype="application/x-www-form-urlencoded">
            <!-- Email -->
            <label for="email">Email</label><br>
            <input type="email" name="email" id="email" value=""placeholer="Put your email" required autofocus><br><br>
            <!-- Password -->
            <label for="password">Password</label><br>
            <input type="password" name="password" id="password" value="" placeholder="Put your password">
            <!-- Submit -->
            <input type="submit" name="btn" value="submit">
        </form>
    </body>
</html>


