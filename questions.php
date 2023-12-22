<?php

require_once("./process/connexion.php");
session_start();

// var_dump($_SESSION["questions"][$_SESSION['index_question']]["question"]);
// var_dump($_SESSION);





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

  <form action="./process/next_question.php" method="post">
    <div class="card text-center text-white bg-dark">
      <div class="card-header">

        <h1>Question <?php $_SESSION["questions"][$_SESSION['index_question']]["question"]; ?> :</h1>

      </div>
      <h5> <?php echo $_SESSION["questions"][$_SESSION['index_question']]["question"]; ?> </h5>

      <div class="d-flex justify-content-center">
        <div class="card-body card text-bg-dark mb-3" style="max-width: 30rem;">
          <h5 class="card-title"></h5>
          <div class="mb-3">
            <input type="radio" id="disabledTextInput" class="form-control" value=" <?php echo ($_SESSION["questions"]["index_reponse"]); ?>">
            
          </div>

          <div class="mb-3">
            <input type="radio" id="disabledTextInput" class="form-control" value=" <?php echo ($_SESSION["questions"][$_SESSION["index_reponse"]]); ?>">
            <label><?= $_SESSION['questions']['index_reponse'] ?> </label>
          </div>

          <div class="mb-3">
            <input type="radio" id="disabledTextInput" class="form-control"value=" <?php echo ($_SESSION["questions"]["index_reponse"]); ?>">
          </div>


          <button type="submit" class="btn btn-primary">Valider</button>


          </fieldset>
  </form>






  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>

</html>