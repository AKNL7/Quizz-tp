<?php

require_once("./connexion.php");

if (isset($_POST["pseudo"]) && !empty($_POST["pseudo"])) {
    $score = 0;

    $request = $database->prepare('INSERT INTO `user` (pseudo, score) VALUES (:pseudo, :score)');

    $request->execute([
        "pseudo" => $_POST['pseudo'],
        "score" => $score
    ]);
}



header('Location: ../questions.php');