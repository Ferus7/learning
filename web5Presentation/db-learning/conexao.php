<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<title>Conexão</title>
		<meta charset="UTF-8">
	</head>
	<body>
		<?php
			$conexao =  mysqli_connect('localhost','root','presbiteriana500','yuri');
			
			if($conexao){
				mysqli_set_charset($conexao,'utf-8');
				//echo"ConexãoRealizada";
			}else{
				echo"Erro na Conexão, Tente Novamente!";
			}
		?>
	</body>
</html>