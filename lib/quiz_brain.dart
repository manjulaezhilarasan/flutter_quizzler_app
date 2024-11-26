import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Questions(
        questionText:
            'Approximately one quarter of human bones are in the feet',
        questionAnswer: true),
    Questions(questionText: 'A slug\'s blood is green', questionAnswer: true),
    Questions(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Questions(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        questionAnswer: true),
    Questions(
        questionText: 'It is illegal to pee in the Ocean in Portugal',
        questionAnswer: true),
    Questions(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times',
        questionAnswer: false),
    Questions(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: false),
    Questions(
        questionText:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant',
        questionAnswer: false),
    Questions(
        questionText:
            'The total surface area of human lungs is approximately 70 square metres',
        questionAnswer: true),
    Questions(
        questionText: 'Google was originally called \"Backrub\".',
        questionAnswer: true),
    Questions(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog',
        questionAnswer: true),
  ];

  bool isFinished(){
    if(_questionNumber >= _questionBank.length - 1){
      print('Now returning true');
      return true;
    } else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }



  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;

  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}
