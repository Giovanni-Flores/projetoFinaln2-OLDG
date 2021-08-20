// @dart=2.7
import 'package:flutter/material.dart';
import 'package:projectfinal_old/Quiz/model/category.dart';
import 'package:projectfinal_old/Quiz/model/option.dart';
import 'package:projectfinal_old/Quiz/model/question.dart';
import 'package:projectfinal_old/Quiz/widget/question_numbers_widget.dart';
import 'package:projectfinal_old/Quiz/widget/questions_widget.dart';

class CategoryPage extends StatefulWidget {
  final Category category;

  const CategoryPage({Key key, @required this.category}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  PageController controller;
  Question question;

  @override
  void initState() {
    super.initState();

    controller = PageController();
    question = widget.category.questions.first;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: QuestionsWidget(
          category: widget.category,
          controller: controller,
          onChangedPage: (index) => nextQuestion(index: index),
          onClickedOption: selectOption,
        ),
      );

  Widget buildAppBar(context) => AppBar(
        title: Text("QUIZ!"),
        actions: [
          SizedBox(width: 16.0),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Colors.indigo
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: QuestionNumbersWidget(
              questions: widget.category.questions,
              question: question,
              onClickedNumber: (index) =>
                  nextQuestion(index: index, jump: true),
            ),
          ),
        ),
      );

  void selectOption(Option option) {
    if (question.isLocked) {
      return;
    } else {
      setState(() {
        question.isLocked = true;
        question.selectedOption = option;
      });
    }
  }

  void nextQuestion({int index, bool jump = false}) {
    final nextPage = controller.page + 1;
    final indexPage = index ?? nextPage.toInt();

    setState(() {
      question = widget.category.questions[indexPage];
    });

    if (jump) {
      controller.jumpToPage(indexPage);
    }
  }
}
