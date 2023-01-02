<?php
require_once "../classes/Quiz.php";
$res = (new Quiz)->getAll();
// var_dump($res);

var_dump($_POST);
die;
if (isset($_POST['user_answers'])) results();


function results()
{
  foreach ($_POST['user_answers'] as $user_answer) {
  }
}
