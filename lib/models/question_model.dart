class QuestionModel {
  final String questionText;
  final List<String> questionAnswers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(questionAnswers);
    shuffledList.shuffle();
    return shuffledList;
  }

  const QuestionModel(this.questionText, this.questionAnswers);
}