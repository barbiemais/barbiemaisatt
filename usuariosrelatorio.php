<?php
session_start();

//Verifica o acesso.
require 'acessoadm.php';

//Cria variáveis com a sessão.
$logado = $_SESSION['nome'];

//Faz a conexão com o BD.
require 'conexao.php';

//Cria o SQL com limites de página ordenado por id
$sql = "SELECT * FROM usuarios ORDER BY id";

//Conta a quantidade total de registros por acesso
$sql1 = "SELECT count(*) as ADM FROM usuarios WHERE acesso='Admin'";
$sql2 = "SELECT count(*) as Comum FROM usuarios WHERE acesso='Comum'";


//Executa o SQL
$result = $conn->query($sql);
$result1 = $conn->query($sql1);
$result2 = $conn->query($sql2);

//Prepara as contagens
$row1 = $result1->fetch_assoc();
$row2 = $result2->fetch_assoc();

//Se a consulta tiver resultados
if ($result->num_rows > 0) {
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Relatório de Usuários</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/tabela.css">

<!--<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/padrao.css">
<!----<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">---->


<script src="./js/filtrar.js"></script>
<style>

#input{
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
  
}


input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type="text"]:focus{
outline: none;
box-shadow: 0px 0px 5px #ffccfd;
border:1px solid #bc00b5;
}

input[type="text"]:hover{
border: 1px solid #999;
border-radius: 5px;
}

input[type="text"]:focus:hover{
outline: none;
box-shadow: 0px 0px 5px #ffccfd;
border:1px solid #bc00b5;
border-radius:0;

} 

    .wrapper {
    max-width: 800px;
    margin: 0 auto;
}
</style>
</head>
<body>

<div class="topnav">

</div>

<div class="content">


			<h1>Relatório de Usuários</h1>
			
			<input type="text" id="filtrarnomes" onkeyup="filtrar('filtrarnomes', 1)" placeholder="Busca de nomes">
			<input type="text" id="filtraremails" onkeyup="filtrar('filtraremails', 2)" placeholder="Busca de emails">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
			<table id="myTable">
<tr><th>Id</th><th onclick="sortTable(1)">Nome</th><th>Email</th><th>Acesso</th></tr>
				
	<?php
	  while($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["Id"] . "</td><td>" . $row["Nome"] . "</td><td>" . $row["Email"] . "</td><td>" . $row["Acesso"] . "</td></tr>";
		
	  }
	?>
				
			</table>
</div>

<div class="wrapper">
    <canvas id="myChart" width="1000" height="450"></canvas>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>

    <script type="text/javascript">
        var ctx = document.getElementById("myChart");
        var valores = [<?php echo $row1["ADM"] ?>, <?php echo $row2["Comum"] ?>];
        var tipos = ["ADM", "Comum"];

        var myChart = new Chart(ctx, {
          type: "pie",
          data: {
            labels: tipos,
            datasets: [
              {
                label: "Usuarios",
                data: valores,
                backgroundColor: [
                  "rgba(255, 99, 132, 1)",
                  "rgba(54, 162, 235, 1)",
                  "rgba(255, 206, 86, 0.2)",
                  "rgba(75, 192, 192, 0.2)",
                  "rgba(153, 102, 255, 0.2)",
                ]
              }
            ]
          }
        }); 
    </script>           

  
           
    </div>

<div class="footer">
<?php //require 'rodape.php'; ?>
</div>

</body>
</html>
<?php
	//Se a consulta não tiver resultados  			
	} else {
		echo "<h1>Nenhum resultado foi encontrado.</h1>";
	}
	
//Fecha a conexão.	
	$conn->close();
	
?> 