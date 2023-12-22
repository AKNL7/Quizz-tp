<?php
require_once("./connexion.php");

session_start();

   $_SESSION['index_reponse'] += 1;


if ($_SESSION["reponses"] && $_SESSION['index_reponse']===14){

    header("Location: ../resultat.php");

} else {
  
    header('Location: ../questions.php');
}


