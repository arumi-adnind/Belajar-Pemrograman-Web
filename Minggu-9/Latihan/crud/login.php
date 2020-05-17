<?php
session_start();
require 'connect.php';

if(isset($_COOKIE['id']) && isset($_COOKIE['key']))
{
    $id = $_COOKIE['id'];
    $key = $_COOKIE['key'];

    $result = mysqli_query($conn, "SELECT username FROM tb_user WHERE hak = $id");
    $row = mysqli_fetch_assoc($result);

    if($key === hash('sha256', $row['username']))
    {
        $_SESSION['login'] = true;
    }
}


if(isset($_SESSION["login"]))
{
    header("location: index.php");
    exit;
}

if(isset($_POST["login"]))
{
    $username = $_POST["user"];
    $password = $_POST["pass"];

    $result = mysqli_query($conn, "SELECT * FROM tb_user WHERE 
    username = '$username' AND password = '$password'");

    if($username != "" || $password != "")
    {
        if(mysqli_num_rows($result) != 0)
        {
            $row = mysqli_fetch_assoc($result);
            
            //set session
            $_SESSION["login"] = true;

            //cek remember me
            if(isset($_POST["remember"]))
            {
                //buat cookie
                setcookie('id', $row['hak'], time()+60);
                setcookie('key', hash('sha256', $row['username']), time()+60);
            }

            header("location: index.php");
            exit;
        }
        else
        {
            $error1 = true;
        }
    }
    else
    {
        $error2 = true;   
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<style>
		@import url(https://fonts.googleapis.com/css?family=Roboto:300);
		.login-page {
			width : 360px;
			padding : 0 0 0;
			margin : auto;
			background : rgb(255, 255, 217);
			font-size : 14px
		}
		.form {
			background : rgb(255, 195, 137);
			position : relative;
			z-index : 1;
			maxwidth : 360px;
			margin : 0 auto 100px;
			padding : 45px;
			text-align : center;
			box-shadow : 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
		}
		.form input {
			font-family : "Roboto", sans-serif;
			outlie : 0;
			background : #f2f2f2;
			width : 100%;
			border : 0;
			margin : 0 0 15px;
			padding : 15px;
			box-sizing : border-box;
			font-size : 14px;
		}
		.form button {
			font-family : "Roboto", sans-serif;
			text-transform : uppercase;
			outline : 0;
			background : #dd4814;
			width : 100%;
			border : 0;
			padding : 15px;
			color : #ffffff;
			font-size : 14px;
			webkit-transition : all 0.3 ease;
			transition : all 0.3 ease;
			cursor : pointer;
		}
		.form button:hover,.form button:active,.form button:focus {
			background : #43AD47;
		.form label
			font-size : 14px;
			font-family : "Roboto", sans-serif;
		}
		body {
			background : rgb(255, 255, 217);
			font-family : "Roboto", sans-serif;
			padding : 5% 0 0;
		}
	</style>
<body>
<h1><center>Halaman Login</center></h1>
<?php if(isset($error1)) : ?>
    <p style="color: red; font-style: italic;">Username / password salah!</p>
<?php endif; ?>
<?php if(isset($error2)) : ?>
    <p style="color: red; font-style: italic;">Username / password harus diisi!</p>
<?php endif; ?>

<div class ="login-page">
	<div class="form">
		<form action="" method="post">
    			<input type="text" name="user" placeholder="Username" required/>
				<input type="password" name="pass" placeholder="Password" required/>
				<button type="submit" name="login">Login</button>
		</form>
	</div>
</div>

</form>
</body>
</head>
</html>