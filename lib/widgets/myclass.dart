import 'package:dashboard/widgets/chart.dart';
import 'package:dashboard/widgets/mettings.dart';
import 'package:dashboard/widgets/roundchart.dart';
import 'package:dashboard/widgets/today.dart';
import 'package:flutter/material.dart';

class MainCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Stack(
        children: [
          Positioned(
            top: 10,
            right: 150,
            child: Container(
              alignment: Alignment.center,
              height: constraints.maxHeight * 0.05,
              width: constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.grey.shade200, Colors.grey.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: Colors.grey.shade300,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Search",
                    suffixIcon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 70,
            top: 6,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dark_mode_rounded,
                color: Colors.grey.shade400,
                size: 35,
              ),
            ),
          ),
          //Dashboard text and calander logo code from here
          Positioned(
            top: 80,
            left: 20,
            child: Container(
              height: constraints.maxHeight * 0.06,
              width: constraints.maxWidth * 0.9,
              child: Row(
                children: [
                  Text(
                    "Dashboard",
                    style: TextStyle(
                        fontFamily: "Rakkas",
                        // wordSpacing: 0.3,
                        letterSpacing: 0.9,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Spacer(),
                  Icon(Icons.calendar_today_outlined),
                  SizedBox(
                    width: constraints.maxWidth * 0.02,
                  ),
                  Text(
                    "Wednesday,24.03.2021",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, letterSpacing: 0.8),
                  ),
                ],
              ),
            ),
          ),
          //Charts code from here
          Positioned(
            top: 160,
            left: 25,
            child: Container(
                height: constraints.maxHeight * 0.34,
                width: constraints.maxWidth * 0.2,
                child: RoundChart()),
          ),
          Positioned(
            top: 160,
            left: 250,
            child: Container(
              height: constraints.minHeight * 0.16,
              width: constraints.minWidth * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "New Patients",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "54",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                      Container(
                        height: constraints.minHeight * 0.03,
                        width: constraints.minWidth * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.shade100),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_up_rounded,
                              color: Colors.green.shade300,
                              size: 15,
                            ),
                            Text(
                              "51\%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green.shade300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Old Patients------------------------------------------------------------------->>>>>>
          Positioned(
            top: 297,
            left: 250,
            child: Container(
              height: constraints.minHeight * 0.16,
              width: constraints.minWidth * 0.18,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      "Old Patients",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "32",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                      Container(
                        height: constraints.minHeight * 0.03,
                        width: constraints.minWidth * 0.05,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red.shade100),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.red.shade300,
                              size: 15,
                            ),
                            Text(
                              "02\%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red.shade300),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //Chart------------------------------------------------------------>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          Positioned(
            top: 155,
            left: 450,
            child: Container(
              height: constraints.minHeight * 0.35,
              width: constraints.minWidth * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Chart(),
            ),
          ),
          //Bottom part ---------------------------------------------------------------->>>>>>>>>>>>>>
          Positioned(
            bottom: 250,
            left: 20,
            child: Container(
              width: constraints.minWidth * 0.95,
              height: constraints.minHeight * 0.1,
              child: Row(
                children: [
                  Text(
                    "Events",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    width: constraints.minWidth * 0.5,
                  ),
                  Text(
                    "Your Patients today",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "All patients",
                      style: TextStyle(
                          color: Colors.green.shade300,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: constraints.minWidth * 0.02,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 13,
                    color: Colors.green.shade300,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 20,
            child: Container(
              height: constraints.minHeight * 0.35,
              width: constraints.minWidth * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Mettings(),
            ),
          ),
          //Todays patients ---------------------------------------------------->>>>>>>>>>>>>>
          Positioned(
            right: 20,
            bottom: 0,
            child: Container(
              height: constraints.minHeight * 0.35,
              width: constraints.minWidth * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Today(),
            ),
          ),
        ],
      );
    });
  }
}
