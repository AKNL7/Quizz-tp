<?php

require_once("./connexion.php");
  

session_start();
 
    $score = 0;
    
    // $request = $database->prepare('INSERT INTO `user` (pseudo, score) VALUES (:pseudo, :score)');
    
    // $request->execute([
    //     "pseudo" => $_POST['pseudo'],
    //     "score" => $score
    // ]);


    
    $request = $database->query('SELECT * FROM quizz_question 
    JOIN correction ON quizz_question.id = correction.question_id');
    

    $questions = $request->fetchAll();
  
   
    
    $_SESSION["index_question"]=0;
    $_SESSION["questions"]=$questions;
    
    

    $_SESSION["index_reponse"]=0; 
    $_SESSION["reponses"]= $reponses;





header('Location: ../questions.php');