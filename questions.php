<?php

require_once("./process/connexion.php");


$id=12;
$request = $database->query('SELECT question FROM `quizz-question` WHERE id = 1');

$questions = $request->fetch(); 
var_dump($questions);
 

session_start();

if (isset($_SESSION['question']) && !empty($_SESSION['question'])) {
$_SESSION["question"] = $_POST["question"];

}
while ($questions<15) {
  echo $questions++;
}

var_dump($_SESSION);





?>






<!DOCTYPE html>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Quizz</title>
</head>
<body>

<form action="../tp-quizz/questions.php" method="post">
<div class="card text-center text-white bg-dark">
  <div class="card-header">
  
  <h1>Question 1 :</h1>

  </div>
  <h5 class="card-title"><?php
  foreach($questions as $question){
  echo $question;
   };  ?>
  

 

  
 
  <div class="d-flex justify-content-center">
  <div class="card-body card text-bg-dark mb-3" style="max-width: 30rem;">
    <h5 class="card-title"></h5>
    <div class="mb-3">
      <input type="text" id="disabledTextInput" class="form-control">
    </div>
    
    <div class="mb-3">
      <input type="text" id="disabledTextInput" class="form-control">
    </div>

    <div class="mb-3">
      <input type="text" id="disabledTextInput" class="form-control">
    </div>

   
    <button type="submit" class="btn btn-primary"> <?php while ($questions<15) {
  echo $questions++;
} ?> Valider</button>


  </fieldset>
</form>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>