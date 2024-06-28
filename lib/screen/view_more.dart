import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/layout/explore_item.dart';
import 'package:logical_reasoning_test/layout/subject_item.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';
import 'package:logical_reasoning_test/utils.dart';

class ViewMoreScreen extends StatelessWidget {
  const ViewMoreScreen({super.key, required this.title, required this.list});

  final String title;
  final RxList<ExploreModel> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 30),
            decoration: BoxDecoration(
              border: Border.all(
                color: app200,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              child: Obx(() {
                return GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(
                    list.length,
                    (index) {
                      final model = list[index];
                      return SubjectItem(
                        model: model,
                        index: index,
                        list: list,
                      );
                    },
                  ),
                );
              }),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: app200,
                ),
                borderRadius: BorderRadius.circular(40)),
            child: Text(
              '$title',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, color: app800),
            ),
          ),
        ],
      ),
    );
  }
}
