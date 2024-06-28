import 'package:flutter/material.dart';
import 'package:logical_reasoning_test/screen/section/competitive_exam.dart';
import 'package:logical_reasoning_test/screen/section/explore.dart';
import 'package:logical_reasoning_test/screen/section/online_free_course.dart';
import 'package:logical_reasoning_test/screen/section/subject.dart';
import 'package:logical_reasoning_test/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: app100,
        title: Text(
          'Logical Reasoning Test',
          style: TextStyle(
              color: app800, fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ExploreSection(),
            SubjectSection(),
            CESection(),
            OFCSection(),
          ],
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Logical Reasoning Test',
                style: TextStyle(
                    color: app700, fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Divider(
                color: app600,
                thickness: 3,
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {},
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: app800, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  openUrl('https://reasoningquiz.com/about');
                },
                title: Text(
                  'About',
                  style: TextStyle(
                      color: app800, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  openUrl('https://reasoningquiz.com/contact');
                },
                title: Text(
                  'Contact',
                  style: TextStyle(
                      color: app800, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
              ListTile(
                onTap: () {
                  openUrl('https://reasoningquiz.com/privacy-policy');
                },
                title: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      color: app800, fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(Icons.chevron_right_outlined),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
