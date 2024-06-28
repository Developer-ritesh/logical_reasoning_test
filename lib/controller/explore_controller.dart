// ignore_for_file: unnecessary_cast

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/state_manager.dart';
import 'package:logical_reasoning_test/model/explore_model.dart';

class ExploreController extends GetxController {
  RxBool isLoading = true.obs;
  final firestore = FirebaseFirestore.instance;
  final RxList<ExploreModel> exploreModel = <ExploreModel>[].obs;
  final RxList<ExploreModel> subjectModel = <ExploreModel>[].obs;
  final RxList<ExploreModel> cExamModel = <ExploreModel>[].obs;
  final RxList<ExploreModel> freeCourseModel = <ExploreModel>[].obs;
  final RxList<ExploreModel> listModel = <ExploreModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getExplore();
    getSubject();
    getCexam();
    getOFC();
  }

  void getExplore() async {
    final snapshot = await firestore.collection('explore').get();
    final List<dynamic> dataList =
        snapshot.docs.map((doc) => doc.data()).toList();

    dataList.forEach((data) {
      exploreModel.add(ExploreModel.fromJson(data as Map<String, dynamic>));
    });
  }

  void getSubject() async {
    final snapshot = await firestore.collection('subject').get();

    snapshot.docs.forEach((doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      data['id'] = doc.id; // Adding document ID to the data map
      subjectModel.add(ExploreModel.fromJson(data));
    });
  }

  void getCexam() async {
    final snapshot = await firestore.collection('cexam').get();
    final List<dynamic> dataList =
        snapshot.docs.map((doc) => doc.data()).toList();

    dataList.forEach((data) {
      cExamModel.add(ExploreModel.fromJson(data as Map<String, dynamic>));
    });
  }

  void getOFC() async {
    final snapshot = await firestore.collection('freecourse').get();
    final List<dynamic> dataList =
        snapshot.docs.map((doc) => doc.data()).toList();

    dataList.forEach((data) {
      freeCourseModel.add(ExploreModel.fromJson(data as Map<String, dynamic>));
    });
  }

  void getList(String id) async {
    listModel.value = [];
    final snapshot =
        await firestore.collection('subject').doc(id).collection('list').get();

    if (!snapshot.docs.isEmpty) {
      snapshot.docs.forEach((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        data['id'] = doc.id; // Adding document ID to the data map
        listModel.add(ExploreModel.fromJson(data));
      });
    } else {
      print(
          'No documents found in collection "list" under document with ID $id.');
    }
  }
}
