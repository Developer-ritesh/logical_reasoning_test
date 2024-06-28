import 'package:flutter/material.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';
import 'package:logical_reasoning_test/utils.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.model});

  final ExploreModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: app50,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
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
            width: 10,
          ),
          Text(
            '${model.title}',
            style: TextStyle(
                color: app800, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
