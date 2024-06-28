import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logical_reasoning_test/controller/explore_controller.dart';
import 'package:logical_reasoning_test/layout/list_item.dart';
import 'package:logical_reasoning_test/utils.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key, required this.id}) : super(key: key);

  final ExploreController exploreController = Get.find();
  final String id;

  @override
  Widget build(BuildContext context) {
    // Call getList method in initState to ensure it's called before build
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      exploreController.getList(id);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: app100,
        title: Text(
          'Logical Reasoning Test',
          style: TextStyle(
            color: app800,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      body: Obx(() {
        if (exploreController.listModel.isEmpty) {
          // Display a loading indicator or message while data is being fetched
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: exploreController.listModel.length,
            itemBuilder: (context, index) {
              final model = exploreController.listModel[index];
              print('--> ${model.id}');
              return ListItem(
                model: model,
              );
            },
          );
        }
      }),
    );
  }
}
