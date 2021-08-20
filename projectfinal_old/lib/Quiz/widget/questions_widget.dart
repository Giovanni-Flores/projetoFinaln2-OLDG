// @dart=2.7
import 'package:flutter/material.dart';
import 'package:projectfinal_old/Quiz/model/category.dart';
import 'package:projectfinal_old/Quiz/model/option.dart';
import 'package:projectfinal_old/Quiz/model/question.dart';
import 'options_widget.dart';

//Question and Advice

class QuestionsWidget extends StatelessWidget {
  final Category category;
  final PageController controller;
  final ValueChanged<int> onChangedPage;
  final ValueChanged<Option> onClickedOption;

  const QuestionsWidget({
    Key key,
    @required this.category,
    @required this.controller,
    @required this.onChangedPage,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: onChangedPage,
        controller: controller,
        itemCount: category.questions.length,
        itemBuilder: (context, index) {
          final question = category.questions[index];

          return buildQuestion(question: question);
        },
      );

  Widget buildQuestion({
    @required Question question,
  }) =>
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/pokemonBackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            Text(
              question.text,
              style: TextStyle(
                  fontFamily: "Acme",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(height: 8.0),
            Text(
              "Choose your answer with wisely",
              style: TextStyle(
                  fontFamily: "Acme",
                  color: Colors.amberAccent,
                  fontStyle: FontStyle.italic,
                  fontSize: 18),
            ),
            SizedBox(height: 32),
            Expanded(
              child: OptionsWidget(
                question: question,
                onClickedOption: onClickedOption,
              ),
            ),
          ],
        ),
      );
}
