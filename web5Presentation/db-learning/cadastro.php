<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Login</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css">
	</head>
	
	<body>
		<div class="container col">
			<header class="box-width-100 col right">
				<div>
					<a href="login.php">Login</a>
				</div>
			</header>

			<form method="POST" action="cadastro.php" class="box-form">
				<label name="cadastro" class="size-2">Cadastro</label>
				<input type="text" class="box-input" name="nomeCad" placeholder="Nome">
				<input type="password" class="box-input" name="senhaCad" placeholder="Senha">
				<input type="submit" class="box-button" name="enviarCad" value="Enviar"><br>
			</form>
		</div>

		<?php
			require('conexao.php');
			if( isset($_POST['nomeCad']) &&
			    isset($_POST['senhaCad']) &&
			    !empty( isset($_POST['nomeCad']) ) && 
				!empty( isset($_POST['senhaCad']))
			  ){

				$usuario = $_POST['nomeCad'];
				$senha   = $_POST['senhaCad'];

				$query = mysqli_query($conexao,"SELECT nome, senha from login WHERE nome='$usuario' AND senha='$senha'");
				$validaCadastro = mysqli_affected_rows($conexao);

				if($validaCadastro == 1){
					echo"<script>
						alert('Usuário já está cadastrado.');
					</script>";
				}elseif($validaCadastro > 1){
					echo'WARNING: Verifique seu banco de dados pois parece que têm dados duplicados!';
				}elseif($usuario == '' && $senha == ''){
					echo "<script>alert('Coloque um Nome e uma Senha!')</script>";
				}elseif($senha == ''){
					echo "<script>alert('Coloque uma Senha!')</script>";
				}elseif($usuario == ''){
					echo "<script>alert('Coloque um Nome!')</script>";
				}else{
					$query = mysqli_query($conexao,"INSERT INTO login (nome,senha) VALUES ('$usuario','$senha')");
					if($query){
						echo"<script>alert('Dados Inseridos Com Sucesso!')</script>";
						header('location: login.php');
					}else{
						echo"<script>alert('Erro Ao Inserir Dados!')</script>";
					}
				}
			}
		?>
	</body>
</html>