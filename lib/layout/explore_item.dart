import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';
import 'package:logical_reasoning_test/screen/web_screen.dart';
import 'package:logical_reasoning_test/utils.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({super.key, required this.model});

  final ExploreModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(WebScreen(model:model));
      },
      child: Container(
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
            ),
            Visibility(
              visible: model.hindi.isNotEmpty,
              child: Text(
                '${model.hindi}',
                style: TextStyle(color: app800, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
