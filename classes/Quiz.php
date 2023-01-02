<?php
require_once 'Database.php';
require_once 'Model.php';

class Quiz extends  Model
{
  public static $db_table = 'quizzez';

  function getQuiz()
  {
    $sql = "SELECT id,quiz_id,question FROM questions";
    $results = Database::Get($sql);
    // var_dump($results);
    // die;


    foreach ($results as $question) {
      $id = $question['id'];
      $sql = "SELECT id, answer FROM answers where question_id=$id";
      $re = Database::Get($sql);
      $answers = [];
      foreach ($re as $answer) {
        $answers[] = $answer;
      }
      $question['answers'] = $answers;
      $questions[] = $question;
    }

    $encoded_data = json_encode($questions, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
    file_put_contents('assets/json/data.json', $encoded_data);
  }
  function getAll()
  {
    $sql = "SELECT id,quiz_id,question FROM questions";
    $results = Database::Get($sql);
    // var_dump($results);
    // die;


    foreach ($results as $question) {
      $id = $question['id'];
      $sql = "SELECT id, answer FROM answers where question_id=$id";
      $re = Database::Get($sql);
      $answers = [];
      foreach ($re as $answer) {
        $answers[] = $answer;
      }
      $question['answers'] = $answers;
      $questions[] = $question;
    }

    return $questions;
  }
}
