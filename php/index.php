<?php

include "connect.php" ; 
 $sql  = "SELECT * FROM article" ;  
 $stmt = $con->prepare($sql);
 $stmt->execute() ; 
 $article = $stmt->fetchAll(PDO::FETCH_ASSOC) ; 

 echo json_encode($article) ; 
