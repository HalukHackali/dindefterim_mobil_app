import 'package:dindefterim_sari/quiz/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "İslamın şartı kaçtır?",
    {
      "7": false,
      "99": false,
      "5": true,
      "6": false,
    },
  ),
  QuestionModel(
      "İmanın şartı kaçtır",
      {
    "12": false,
    "5": false,
    "41": false,
    "6": true,
  }),
  QuestionModel("Hz.Muhammed'in doğum tarihi ne zamandır?", {
    "610": false,
    "571": true,
    "1345": false,
    "638": false,
  }),
  QuestionModel("Şirk Nedir?", {
    "Allah'ın varlığını kabul etmek": false,
    "Allah'ın birliğini kabul etmek": false,
    "Allah'a ortak koşmak": true,
    "YAlnızca Allah'a dua etmek": false,
  }),
  QuestionModel("Hangisi orucu bozar?", {
    "Bilerek yemek yemek": true,
    "Unutarak içmek": false,
    "Uyumak": false,
    "Kan vermek": false,
  }),
  QuestionModel("********? ?", {
    "********? ********?": false,
    "********? ********?": false,
    "#####:" : true,
    "********? ********?": false,
  }),
  QuestionModel(
      "********?", {
    "********?": false,
    "********?": false,
    "********?": false,
    "********?": true,
  }),
  QuestionModel("********??", {
    "********?": false,
    "********?": false,
    "#####": true,
    "********?": false,
  }),
  QuestionModel(
      "********? ?",
      {
        "********?": false,
        "********?, ********?": false,
        "#####": true,
        "********?, ********?": false,
      }),
  QuestionModel(
      "********? ?", {
    "********? ********?": false,
    "#####": true,
    "********?": false,
    "********?": false,
  }),
];
