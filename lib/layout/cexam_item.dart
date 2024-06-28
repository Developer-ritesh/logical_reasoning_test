import 'package:flutter/material.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';
import 'package:logical_reasoning_test/utils.dart';

class CExamItem extends StatelessWidget {
  const CExamItem({super.key, required this.model, required this.index});

  final ExploreModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    if (index != 5) {
      return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: app100,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                child: CircleAvatar(
                  child: Image.network(
                    '${model.img}',
                  ),
                ),
                visible: model.img.isNotEmpty,
              ),
            SizedBox(
              height: 10,
            ),
            Text(
              '${model.title}',
              style: TextStyle(color: app800, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: app100,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: app400,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.chevron_right_outlined,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'View All',
              style: TextStyle(color: app800, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }
  }
}
