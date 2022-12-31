<?php
$mysqli = new mysqli('localhost', 'root', '', 'quizizy');

if ($mysqli->connect_errno != 0) {
  echo $mysqli->connect_error;
  exit();
}
$sql = "SELECT id,quiz_id,question FROM questions";
$results = $mysqli->query($sql);
foreach ($results as $question) {
  $id = $question['id'];
  $sql = "SELECT id, answer FROM answers where question_id=$id";
  $re = $mysqli->query($sql);
  $answers = [];
  foreach ($re as $answer) {
    $answers[] = $answer;
  }
  $question['answers'] = $answers;
  $questions[] = $question;
}

$encoded_data = json_encode($questions, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
file_put_contents('data.json', $encoded_data);
