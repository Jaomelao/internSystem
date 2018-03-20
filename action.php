<?php 
function conectar() {
   $servidor = "localhost";
   $database_name = 'labmatii';
   $database_username = 'joaovitor';
   $database_password = 'oqvQKiOCUpQANye2';

   $result = mysqli_connect($servidor,$database_username,$database_password,$database_name);

   if (!$result) return false;
        return $result;

}

	$conn = conectar();
	$query = "SELECT * FROM  transacao";
	$exec_sql = mysqli_query($conn,$query);
    $i=0;

   while ($dados_user = mysqli_fetch_assoc($exec_sql)) 
   {
   		 $valor[$i]= $dados_user["valor_transacao"];
	     $descricao[$i]= $dados_user["desc_transacao"];
	    // echo $valor[$i]."<br>".$descricao[$i]."<br>";
	     $i++;
   }
   for($i=0;$i<mysqli_num_rows($exec_sql);$i++){
     echo $valor[$i]."<br>".$descricao[$i]."<br>";
   }

foreach($valor as $item)
{
echo $item."<br>";
}

	/*if ($exec_sql){
	    $num_row = mysqli_num_rows($exec_sql);
	    if ($num_row > 0) {
	        $dados_user = mysqli_fetch_assoc($exec_sql);
	        $valor= $dados_user["valor_transacao"];
	        $descricao= $dados_user["desc_transacao"];
	        echo $valor."<br>".$descricao;
	    }
	}*/

?>
