import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/controller/explore_controller.dart';
import 'package:logical_reasoning_test/layout/cexam_item.dart';
import 'package:logical_reasoning_test/screen/view_more.dart';
import 'package:logical_reasoning_test/utils.dart';

class CESection extends StatelessWidget {
  CESection({super.key});
  final exploreController = Get.put(ExploreController());

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            height: 260,
            child: Obx(() {
              return GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: List.generate(
                  min(exploreController.cExamModel.length,
                      5), // Display only 5 items or less
                  (index) {
                    final model = exploreController.cExamModel[index];
                    return CExamItem(
                      model: model,
                      index: index,
                    );
                  },
                )..addAll(
                    exploreController.cExamModel.length >
                            5 // If there are more than 5 items, add a "View More" button
                        ? [
                            ElevatedButton(
                              onPressed: () {
                                // Implement your logic to show more items
                              },
                              child: Text('View More'),
                            ),
                          ]
                        : [],
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
            'Competitive Exam',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: app800),
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () => Get.to(ViewMoreScreen(
                title: 'Competitive Exam', list: exploreController.cExamModel)),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: app200,
                  ),
                  borderRadius: BorderRadius.circular(40)),
              child: Icon(Icons.chevron_right_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
