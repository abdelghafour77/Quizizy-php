<?php
require_once "../classes/Quiz.php";
$res = (new Quiz)->getAll();
// var_dump($res);
unset($_POST['user_answers'][0]);
// var_dump($_POST);

// die;
if (isset($_POST['user_answers'])) results();



function results()
{


  $mergedArray = [];

  foreach ($_POST['user_answers'] as $subArray) {
    // var_dump($subArray);
    $mergedArray = array_merge($mergedArray, $subArray);
  }

  // print_r($mergedArray); // [1, 2, 3, 4, 5, 6, 7, 8, 9]

  $answers = (new Quiz)->getAnswers();
  // var_dump($answers);
  unset($mergedArray['id_question']);
  var_dump($mergedArray);
  var_dump($answers);

  foreach ($_POST['user_answers'] as $user_answer) {
  }
}
