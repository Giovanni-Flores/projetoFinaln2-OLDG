// @dart=2.7
import 'package:flutter/material.dart';
import 'package:projectfinal_old/Quiz/model/category.dart';
import 'package:projectfinal_old/Quiz/page/category_page.dart';

class CategoryHeaderWidget extends StatelessWidget {
  final Category category;

  const CategoryHeaderWidget({
    Key key,
    @required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryPage(category: category),
        )),
        child: Container(
          width: 129.0,
          height: 158.0,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Color(0xFFFFC700),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 12.0),
              Text(
                "Quiz!",
                style: TextStyle(
                  fontFamily: "Acme",
                  fontSize: 36,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
}
