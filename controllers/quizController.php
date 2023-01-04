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


  // foreach ($_POST['user_answers'] as $subArray) {
  // var_dump($subArray);
  $ar = $_POST['user_answers'];
  // }

  // print_r($mergedArray); // [1, 2, 3, 4, 5, 6, 7, 8, 9]

  $answers = (new Quiz)->getAnswers();
  // var_dump($answers);
  // unset($mergedArray['id_question']);
  // var_dump($mergedArray);
  // var_dump($answers);
  $score = 0;
  $re = "";
  $wrongAnswers = "<div id='result_questions'>";
  foreach ($answers as $answer) {
    // var_dump($ar[$answer['id']]['answers'][0]);
    $answer_1 = ($ar[$answer['id']]['answers'][0] == 'false') ? 0 : 1;
    $answer_2 = ($ar[$answer['id']]['answers'][1] == 'false') ? 0 : 1;
    $answer_3 = ($ar[$answer['id']]['answers'][2] == 'false') ? 0 : 1;
    $answer_4 = ($ar[$answer['id']]['answers'][3] == 'false') ? 0 : 1;
    $user_1 = $answer['answers'][0]['type'];
    $user_2 = $answer['answers'][1]['type'];
    $user_3 = $answer['answers'][2]['type'];
    $user_4 = $answer['answers'][3]['type'];

    // echo "ID: " . $answer['id'] . "<br>";
    // echo "user:\t " . $answer_1 . "   " . $answer_2 . "   " . $answer_3 . "   " . $answer_4;
    // echo "databse:\t " . $user_1 . "   " . $user_2 . "   " . $user_3 . "   " . $user_4 . "<br>";

    if ($user_1 == $answer_1 && $user_2 == $answer_2 && $user_3 == $answer_3 && $user_4 == $answer_4) {
      $score += 1;
    } else {
      $re .= "<div class='question'>
                <h4>" . $answer['question'] . "</h4>
                <h5 class='correct-answer'><span>Correct answer : </span>" . $answer['answer'] . "</h5>
                <h5 class='justification'><span>Justification : </span>" . $answer['justify'] . "</h5>
              </div>";
    }
  }
  $aa = "<span id='score'>Your score is <span>" . $score . "/10</span></span>";
  $ress = $wrongAnswers . $aa . $re  . "</div>";
  echo $ress;
  // return $ress;
}
