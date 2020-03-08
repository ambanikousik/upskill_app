import 'package:upskillapp/data/assets.dart';
import 'package:upskillapp/models/models.dart';

QuestModel question1 = QuestModel(text: 'Q.1 What is Vue?');
QuestModel question2 = QuestModel(text: 'Q.1 What is Vue?',image: questionImg);

List<AnswerModel> answer1 = [
  AnswerModel(text: 'Answer 1',isSelected: false),
  AnswerModel(text: 'Answer 2',isSelected: false),
  AnswerModel(text: 'Answer 3',isSelected: false),
  AnswerModel(text: 'Answer 4',isSelected: false),
];


List<AnswerModel> answer2 = [
  AnswerModel(isSelected: false,image: domain_1,),
  AnswerModel(isSelected: false,image: domain_2),
  AnswerModel(isSelected: false,image: domain_3),
  AnswerModel(isSelected: false,image: domain_4),
];

List<AnswerModel> answer3 = [
  AnswerModel(text: 'Answer 1',isSelected: false,image: domain_1),
  AnswerModel(text: 'Answer 2',isSelected: false,image: domain_2),
  AnswerModel(text: 'Answer 3',isSelected: false,image: domain_3),
  AnswerModel(text: 'Answer 4',isSelected: false,image: domain_4),
];