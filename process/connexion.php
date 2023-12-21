<?php

try{

  $dsn= 'mysql:host=localhost;dbname=quizz';
  
  $user= 'root';

  $password= '';

  $database= new PDO ($dsn, $user,$password);


}

catch (Exception $message) {
  echo "Erreur" . "<pre>$message</^pre" ;
}
