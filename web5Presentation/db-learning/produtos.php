<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Administrador</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css">
		<script src="js/script.js"></script>
	</head>
	<body>
		<div class="container col">
			<header class="box-width-100 col center">
				<form action="show.php" method="POST" class="row">
					<div class="left-in">
						<label>Produtos</label>
					</div>

					<div class="right-in">
						<a href="admin.php">Clientes</a>
						<a href="logout.php">Logout</a>
					</div>
				</form>
			</header>
			<session class="container center">
				<div class="box-tool row">
					<div class="col-2 align-x">
						<!-- <input type="submit" class="box-button" value="Item" onclick="msg()"> -->
						<button onclick="msg()">Item</button>
					</div>

					<div class="col-2 align-x">
						<input type="text" class="box-input" placeholder="Código">
						<input type="submit" class="box-button" value="Excluir">
					</div>
				</div>
			</session>
			<div class="container-hidden" id="disp">
				<div class="box-hidden"></div>
			</div>
			

			<section class="body-sec">
				<?php
					require('conexao.php');
					$query = mysqli_query($conexao,"SELECT * FROM produtos ORDER BY id");
				?>

				<table class='table'>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Descrição</th>
						<th>Quantide No Estoque</th>
						<th>Preço</th>
					</tr>
				
					<?php	
						while($arrayData = mysqli_fetch_assoc($query)){
							echo"<tr>";
							echo"<td>".$arrayData['ID']."</td>";
							echo"<td>".$arrayData['nome']."</td>";
							echo"<td>".$arrayData['descricao']."</td>";
							echo"<td>".$arrayData['quantidade']."</td>";
							echo"<td>".$arrayData['preco']."</td>";
							echo"</tr>";
						}
					?>
				</table>
			</section>
		</div>
	</body>
</html>
