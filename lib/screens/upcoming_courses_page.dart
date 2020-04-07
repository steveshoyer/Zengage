import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';
import 'package:zengage_learning_platform/widgets/upcoming_course_widgets/FilterHeader.dart';
import 'package:zengage_learning_platform/widgets/upcoming_course_widgets/tabbar_content.dart';

class UpcomingCoursesPage extends StatefulWidget {
  @override
  _UpcomingCoursesPageState createState() => _UpcomingCoursesPageState();
}

class _UpcomingCoursesPageState extends State<UpcomingCoursesPage> {
  List<Widget> homePageWidgets = [
    HeaderBanner(
      imagePath: "assets/images/upcomingpage/upcoming-courses-banner.jpg",
      imageCoverText: "",
    ),
    FilterHeader(),
    CourseTabBar(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                child: homePageWidgets[index],
              );
            },
            itemCount: homePageWidgets.length,
          ),
        ),
      ),
    );
  }
}
