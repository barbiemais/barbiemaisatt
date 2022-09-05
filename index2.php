<!DOCTYPE html>
<html>
<head>
	<title>Quiz da Barbie</title>
	<meta charset="utf-8">
	<!--<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">-->
	<link rel="stylesheet"  href="./quiz.css">
	<link rel="shortcut icon" href="img/logoreal.png" type="image/ico" />
</head>

<body>

  <!--<div id="openModal" class="modalDialog">
	<div>	
         <a href="#openModal"title="Close" class="closeModal"></a>
            <!-- Conteúdo do Modal 
            <h2>ATENÇÃO BARBIE</h2>
            <p1>Você só poderá realizar o quiz uma vez, respire e sinta-se à vontade para
			descobrir a Barbie que grita dentro de você!</p1>

		<style>			
		.pedido {
    margin-top: -300px;
    margin-left: 40%;
    margin-right: 40%;
    margin-bottom: 100px;
}

.teste {
    padding-top: 100px;
}

h2 {
   font-family: Arial, Helvetica, sans-serif;;
    text-align: center;
    padding-top: 15px;
    padding-bottom: 15px;
    color: #fff;
    background-color: #EA00CA;
}

p1 {
    font-family: 'open_sansregular';
    text-align: center;
    color: #FFF;
}

.modalDialog {
    position: fixed;
    font-family: Arial, Helvetica, sans-serif;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
   color: #FFF;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    /* pointer-events: none; */
}

.modalDialog:target {
    opacity: 0;
    pointer-events: auto;
}

.modalDialog>div {
    width: 400px;
    position: relative;
    margin: 10% auto;
    padding: 5px 20px 13px 20px;
    border-radius: 10px;
    background: #000;
}


.closeModal {
    background: #606061;
    color: #FFFFFF;
    line-height: 25px;
    position: absolute;
    right: -12px;
    text-align: center;
    top: -10px;
    width: 24px;
    text-decoration: none;
    font-weight: bold;
    -webkit-border-radius: 12px;
    -moz-border-radius: 12px;
    border-radius: 12px;
    -moz-box-shadow: 1px 1px 3px #000;
    -webkit-box-shadow: 1px 1px 3px #000;
    box-shadow: 1px 1px 3px #000;
}

.closeModal:after {
    content: "\d7";
}

.closeModal:hover {
    background: #f00;
}
		
</style>

    </div>
</div>-->


<div class="body">
<div class="container">
<div class="form">	

<img src="https://www.pngplay.com/wp-content/uploads/13/Barbie-Logo-PNG-Free-File-Download.gif" alt="GIF"> 
	<h1>Qual barbie você é?</h1>
	
<div class="question">

	<form action="respostafinal.php" method="post">

<?php
session_start();

//Cria o SQL com limites de página ordenado por id
$sql = "SELECT profile.id as numero, profile.pergunta, opcoes.id, opcoes.opcoes, opcoes.valor, opcoes.profile_id
FROM profile
JOIN opcoes ON profile.id = opcoes.profile_id order by profile.id";

//Faz a conexão com o BD.
require 'conexao.php';

//Executa o SQL
$result = $conn->query($sql);
 	
		$linha="";
	  while($row = $result->fetch_assoc()) {
		if ($linha != $row["numero"]) { 
			$linha=$row["numero"];
			echo "<p>" . $row["numero"] . " - " . $row["pergunta"] . "</p>";
		}
			echo "<br><input type='radio' name='q" .  $row["numero"] . "' value='" . $row["valor"] . "'>" . $row["opcoes"] . "</br>";
	  }	  

	  
	?>
	<br></br>
	<button class="button" type="submit" value="Responder">Pode ir!</button>
	
	</div><!--question-->
	</div><!--container-->
		</div><!--form-->
	</div><!--body-->
	

	</form>	


</body>
</html>
