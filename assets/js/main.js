let index = 0;
let original_data
let data;
var timerId
var user_answers = []
Index()
function Index() {
      index = 0
      $("#progress").text('1/10')
      $("#questions").hide();
      $("#results").hide();
      $("#welcome").show();
      $("#results").hide();
}

$('.neumorphic-checkbox').on('click', function () {
      $(this).toggleClass('neumorphic-checkbox_active');
});

$.getJSON('assets/json/data.json', function (jsonData) {

      original_data = jsonData;

      data = original_data.slice().sort(function () {
            return 0.5 - Math.random();
      });
});

$('#next').click(function () {
      next();
});

function next() {
      let answer = {};
      let an = [];
      answer.id_question = $('#id').val()
      id1 = ($("#answer1").data("id"));
      id2 = ($("#answer2").data("id"));
      id3 = ($("#answer3").data("id"));
      id4 = ($("#answer4").data("id"));

      answer1 = $('#answer1').hasClass('neumorphic-checkbox_active')
      answer2 = $('#answer2').hasClass('neumorphic-checkbox_active')
      answer3 = $('#answer3').hasClass('neumorphic-checkbox_active')
      answer4 = $('#answer4').hasClass('neumorphic-checkbox_active')
      an.push(answer1, answer2, answer3, answer4);
      answer.answers = an;
      user_answers[answer.id_question] = answer
      // console.log(user_answers);
      clearInterval(timerId);
      core();
}
function core() {
      if (index >= data.length) {
            results();
      } else {
            timer()
            clearAnswers()
            fetching()
            $("#progress").text(index + '/' + data.length)
      }
}

function clearAnswers() {
      $('#answer1').removeClass('neumorphic-checkbox_active')
      $('#answer2').removeClass('neumorphic-checkbox_active')
      $('#answer3').removeClass('neumorphic-checkbox_active')
      $('#answer4').removeClass('neumorphic-checkbox_active')
}

function fetching() {
      if (index < data.length) {
            $('#id').val(data[index].id);
            $('#question').html(data[index].question);
            ($("#answer1").data("id", data[index].answers[0].id));
            ($("#answer2").data("id", data[index].answers[1].id));
            ($("#answer3").data("id", data[index].answers[2].id));
            ($("#answer4").data("id", data[index].answers[3].id));
            $('#answer1 p').html(data[index].answers[0].answer);
            $('#answer2 p').html(data[index].answers[1].answer);
            $('#answer3 p').html(data[index].answers[2].answer);
            $('#answer4 p').html(data[index].answers[3].answer);
      }
      index++;
      timer()
}

function start() {

      $("#name").text(($("#full_name").val()));
      $("#welcome").hide();
      $("#questions").show();
      fetching()
}

function timer() {
      let timeLeft = 30;
      var elem = $("#timer");
      clearInterval(timerId)
      elem.text(timeLeft + ' s');
      timeLeft -= 1;
      timerId = setInterval(function () {

            if (timeLeft == -1) {
                  next()
            } else {
                  elem.text(timeLeft + ' s');
                  timeLeft -= 1;
            }
      }, 1000);
}
function results() {
      $.ajax({
            type: 'POST',
            url: 'controllers/quizController.php',
            data: {
                  user_answers: user_answers
            },
            success: function (response) {
                  $("#questions").hide();
                  $("#results").show();
                  $("#results").html(response)
            }
      });

}




