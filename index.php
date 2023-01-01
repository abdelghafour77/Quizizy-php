<?php
require_once 'classes/Quiz.php';
$n = new Quiz;
$n->getQuiz();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="assets/css/style.css" />
  <title>Quizizy</title>
</head>

<body class="container">
  <section id="welcome">
    <form>
      <div class="segment">
        <h1>Welcome to QUIZIZY</h1>
      </div>
      <label>
        <!-- <div class="button" onmousedown="">Click me!</div> -->
        <input type="text" placeholder="Full name" id="full_name" />
      </label>
      <button class="red" type="button" onclick="start()"><i class="icon ion-md-lock"></i>Start</button>
    </form>
  </section>

  <section id="questions">
    <div class="grid-menu">
      <h4 id="progress">1/10</h4>
      <!-- <div class="progress">
        <div class="progress__fill"></div>
      </div> -->
      <h3 id="timer">30 s</h3>
      <h4 id="name">Name</h4>
    </div>
    <h4 id="question"></h4>
    <div class="wrapper">
      <input type="hidden" id="id" value="" />
      <button id="answer1" class="d-flex btn neumorphic-btn neumorphic-checkbox">
        <p></p>
        <div type="button"></div>
      </button>
      <button id="answer2" class="d-flex btn neumorphic-btn neumorphic-checkbox">
        <p></p>
        <div type="button"></div>
      </button>
      <button id="answer3" class="d-flex btn neumorphic-btn neumorphic-checkbox">
        <p></p>
        <div type="button"></div>
      </button>
      <button id="answer4" class="d-flex btn neumorphic-btn neumorphic-checkbox">
        <p></p>
        <div type="button"></div>
      </button>
    </div>
    <button id="next">NEXT</button>
  </section>
  <!-- <section id="results"> -->
  <section id="results" onmousedown="party.confetti(this)">
    <span id="score">Your score is <span>0/10</span></span>
    <div id="result_questions"></div>
  </section>
  <script src="assets/js/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/party-js@latest/bundle/party.min.js"></script>
  <script src="assets/js/main.js"></script>
</body>

</html>