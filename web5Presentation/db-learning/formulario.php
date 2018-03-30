<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Login</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<fieldset>
			<form method="POST" action="formulario.php">
				<textarea name="formEmail">
					
				</textarea>
				<input type="submit" name="enviar">
			</form>
		</fieldset>
		
		<?php
			require('conexao.php');
			$header = "Content-Type: text/html; charset= utf-8\n" ."From: yuri.ifal@gmail.com\n";
			$assunto = "Hello World PHP";
			$corpo = "É isso aiiii, PHP Funcionou!";
			$email = mail('yuri.ifal.melo@hotmail.com', $assunto, $corpo, $header);
			echo "Email: ".$email
		?>
	</body>
</html>
