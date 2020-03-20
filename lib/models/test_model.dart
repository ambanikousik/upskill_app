class Test {
  int limit;
  List<Questions> questions;
  String testId;

  Test({this.limit, this.questions, this.testId});

  Test.fromJson(Map<String, dynamic> json) {
    limit = json['limit'];
    if (json['questions'] != null) {
      questions = new List<Questions>();
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
    testId = json['testId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limit'] = this.limit;
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    data['testId'] = this.testId;
    return data;
  }
}

class Questions {
  String question;
  List<String> answers;
  int correctAnswer;

  Questions({this.question, this.answers, this.correctAnswer});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answers = json['answers'].cast<String>();
    correctAnswer = json['correct_answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['answers'] = this.answers;
    data['correct_answer'] = this.correctAnswer;
    return data;
  }
}
