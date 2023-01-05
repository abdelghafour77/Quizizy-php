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

  $ar = $_POST['user_answers'];

  $answers = (new Quiz)->getAnswers();
  $countQuestions = (new Quiz)->countQuestions();
  $score = 0;
  $re = "";
  $wrongAnswers = "<div id='result_questions'>";
  foreach ($answers as $answer) {
    $answer_1 = ($ar[$answer['id']]['answers'][0] == 'false') ? 0 : 1;
    $answer_2 = ($ar[$answer['id']]['answers'][1] == 'false') ? 0 : 1;
    $answer_3 = ($ar[$answer['id']]['answers'][2] == 'false') ? 0 : 1;
    $answer_4 = ($ar[$answer['id']]['answers'][3] == 'false') ? 0 : 1;
    $user_1 = $answer['answers'][0]['type'];
    $user_2 = $answer['answers'][1]['type'];
    $user_3 = $answer['answers'][2]['type'];
    $user_4 = $answer['answers'][3]['type'];

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
  $st = "";
  if ($score < ($countQuestions / 2)) {
    $st = "Bad 😐";
  } else if ($score < $countQuestions) {
    $st = "GOOD 😊";
  }
  $aa = "<span id='score'>$st your score is <span>$score / $countQuestions</span></span>";
  if ($score == $countQuestions) {
    $ress = $wrongAnswers . " <h3>Congratulations you have successfully 🎉 completed quiz with full success ! </h3> " .  "</div>  
                              <script>
                                congrat();
                              </script>";
  } else {
    $ress = $wrongAnswers . $aa . $re  . "</div>";
  }
  echo $ress . "<div class='end'><button id='tryAgain' onclick='Index()'>Try Again</button></div>";
}
