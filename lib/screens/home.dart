import 'package:dashboard/widgets/myclass.dart';
import 'package:dashboard/widgets/sideDrawer.dart';
import 'package:dashboard/widgets/user.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade100,
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          children: [
            Container(
              height: height * 1,
              width: width * 0.1,
              child: SideBar(),
            ),
            Container(
              height: height * 1,
              width: width * 0.65,
              // color: Colors.white,
              child: MainCont(),
            ),
            Container(
              height: height * 1,
              width: width * 0.25,
              //  color: Colors.white,
              child: User(),
            ),
          ],
        ),
      ),
    );
  }
}
