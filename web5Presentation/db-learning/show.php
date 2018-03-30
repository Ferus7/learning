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
				<form action="show.php" method="POST" class="row">
					<div class="left-in">
						<label>Farmácia</label>
					</div>

					<div class="right-in">
						<a href="login.php">Login</a>
					</div>
				</form>
			</header>

			<section class="body-sec">
				<?php

					require('conexao.php');
					$query = mysqli_query($conexao,"SELECT * FROM produtos ORDER BY id");
				?>

				<table class='table'>
					<tr>
						<th>Remédio</th>
						<th>Preço</th>
					</tr>
				
					<?php	
						while($arrayData = mysqli_fetch_assoc($query)){
							echo"<tr>";
							echo"<td>".$arrayData['nome']."</td>";
							echo"<td>".$arrayData['preco']."</td>";
							echo"</tr>";
						}
					?>
				</table>
			</section>
		</div>

		<footer>
		</footer>
	</body>
</html>
