<?php

session_start();

   $_SESSION['index_question'] += 1;


if ($_SESSION["questions"] && $_SESSION['index_question']===14){

    header("Location: ../resultat.php");

} else {
  
    header('Location: ../questions.php');
}





