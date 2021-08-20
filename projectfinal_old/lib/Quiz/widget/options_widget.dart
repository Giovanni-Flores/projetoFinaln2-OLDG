// @dart=2.7
import 'package:flutter/material.dart';
import 'package:projectfinal_old/Quiz/model/option.dart';
import 'package:projectfinal_old/Quiz/model/question.dart';
import '../utils.dart';

//Answer box and Text

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key key,
    @required this.question,
    @required this.onClickedOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: Utils.heightBetween(
          question.options
              .map((option) => buildOption(context, option))
              .toList(),
          height: 8.0,
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            buildAnswer(option),
            buildSolution(question.selectedOption, option),
          ],
        ),
      ),
    );
  }

  Widget buildAnswer(Option option) => Container(
        height: 50.0,
        child: Row(children: [
          Text(
            option.code,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24
            ),
          ),
          SizedBox(width: 12.0),
          Text(
            option.text,
            style: TextStyle(
                fontFamily: "Acme",
                color: Colors.white,
                fontSize: 20),
          )
        ]),
      );

  Widget buildSolution(Option solution, Option answer) {
    if (solution == answer) {
      return Text(
        question.solution,
        style: TextStyle(
            fontSize: 16,
            color: Colors.amberAccent,
            fontStyle: FontStyle.italic),
      );
    } else {
      return Container();
    }
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;

    if (!isSelected) {
      return Color(0xFF212121).withOpacity(0.5);
    } else {
      return option.isCorrect ? Color(0xFF39804c) : Colors.red;
    }
  }
}
