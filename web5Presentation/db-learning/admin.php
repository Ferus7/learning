<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Dados</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>

	<div class="container col">
		<header class="box-width-100 col center">
			<form action="admin.php" method="POST" class="row">
				<div class="left-in">
					<input type="text" class="box-input" name="codExcluir" placeholder="Código">
					<input type="submit" class="box-button" value="Excluir">
				</div>

				<div class="right-in">
					<a href="produtos.php">Produtos</a>
					<a href="logout.php">Logout</a>
				</div>
			</form>
		</header>

		<section class="body-sec">
			<?php
				require('conexao.php');
				session_start();
				if(empty($_SESSION['logado'])) {
					return header('location: login.php');
				} else {						
					$excluir = $_POST['codExcluir'];
					$query = mysqli_query($conexao,"SELECT * FROM login ORDER BY id");

					if(isset($excluir)){
						mysqli_query($conexao, "DELETE FROM login WHERE id = $excluir");
						$validaCadastro = mysqli_affected_rows($conexao);

						if($validaCadastro == 1) {
							header('location: admin.php');
							echo"<script>alert('Excluído Com Sucesso!')</script>";
						}else{
							echo"<script>alert('Falhou Ao Excluir!')</script>";
						}
					}
				}
			?>

			<table class='table'>
				<tr>
					<th>ID</th>
					<th>Nome dos Clientes</th>
					<th>Senha</th>
				</tr>
					
				<?php	
					while($arrayData = mysqli_fetch_assoc($query)){
						echo"<tr>";
						echo"<td>".$arrayData['id']."</td>";
						echo"<td>".$arrayData['nome']."</td>";
						echo"<td>".$arrayData['senha']."</td>";
						echo"</tr>";
					}
				?>
			</table>
		</section>
	</div>
	<footer></footer>
	</body>
</html>
