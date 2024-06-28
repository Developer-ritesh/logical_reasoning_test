import 'package:flutter/material.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key, required this.model});

  final ExploreModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${model.title} - ${model.hindi}'),
      ),
    );
  }
}
