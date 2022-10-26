class Quiz {
  final String question;
  final List<String> choices;
  final int correctIndex;
  int selectedIndex;

  // Constructor for Book object
  Quiz(
      {required this.question,
      required this.choices,
      required this.correctIndex,
      required this.selectedIndex});

  @override
  String toString() {
    return "Quiz(question: $question, correctIndex: $correctIndex)";
  }
}
