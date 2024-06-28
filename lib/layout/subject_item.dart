import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';
import 'package:logical_reasoning_test/screen/list_screen.dart';
import 'package:logical_reasoning_test/screen/view_more.dart';
import 'package:logical_reasoning_test/utils.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({super.key, required this.model, required this.index, required this.list});

  final ExploreModel model;
  final int index;
  final RxList<ExploreModel> list;

  @override
  Widget build(BuildContext context) {
    if (index != 5) {
      return GestureDetector(
        onTap: () {
          Get.to(ListScreen(id: model.id));
        },
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: app50,
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
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => Get.to(ViewMoreScreen(title: 'Subject', list:list)),
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: app50,
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
        ),
      );
    }
  }
}
