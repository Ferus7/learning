<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Logout</title>
		<meta charset="UTF-8">
	</head>
	<body>
		<?php
			session_start();
			if(isset($_SESSION['logado']) && $_SESSION['logado'] == TRUE) {
				session_destroy();
				header('location: login.php');
			}
		?>
	</body>
</html>