<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Login</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css">
		<script scr="js/script.js"></script>
	</head>
	<body>
		<div class="container col">
			<header class="box-width-100 col right">
				<div>
					<a href="cadastro.php">Cadastre-se</a>
				</div>
			</header>
			
			<!-- <div class="container center margin-top-down">
				<blockquote class="warning"></blockquote>
			</div> -->

			<form method="POST" action="login.php" class="box-form">
				<label name="cadastro" class="size-2">Login</label>
				<input type="text" class="box-input" name="nome" placeholder="Nome" required autofocus>
				<input type="password" class="box-input" name="senha" placeholder="Senha" required>
				<input type="submit" class="box-button" name="enviar" value="Enviar"><br>
			</form>
		</div>
		
		<?php
			require('conexao.php');
			session_start();
			if(isset($_POST['nome']) && isset($_POST['senha'])){
				$usuario = $_POST['nome'];
				$senha   = $_POST['senha'];
				$id      = $_POST['id'];
				
				$verifica = mysqli_query($conexao, "select * from login where nome = '$usuario' and senha='$senha';");
				if(mysqli_num_rows($verifica) == 1){
					if($usuario == 'admin' && $senha == 'admin'){
						$_SESSION['logado'] = TRUE;
						header('location: admin.php');
					}else{
						header('location: login.php');
					}
				}else{
					//echo"<blockquote class='warning-quote'>Dados Inválidos!</blockquote>";
					echo"<div class='container center margin-top-down'>
							<blockquote class='warning'>Dados inválidos, por favor tente novamente!</blockquote>
						</div>";
				}
			}
		?>
		<div class="container center margin-top-down">
			<blockquote class="warning">Dados inválidos, por favor tente novamente!</blockquote>
		</div>
		<div class="container center margin-top-down">
			<blockquote class="confirm">Mudança feita com sucesso!</blockquote>
		</div>
	</body>
</html>
