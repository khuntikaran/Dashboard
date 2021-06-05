import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      return Container(
        height: constrains.maxHeight * 0.2,
        width: constrains.maxWidth * 1,
        // color: HexColor("#8ac185"),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.green.shade300, Colors.green.shade200],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.bubble_chart,
                size: 50,
                color: Colors.green.shade100,
              ),
              SizedBox(
                height: constrains.maxHeight * 0.1,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dashboard_rounded,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.02,
              ),
              IconButton(
                splashColor: Colors.pink.shade100,
                hoverColor: Colors.white,
                onPressed: () {},
                icon: Icon(
                  Icons.event_note_outlined,
                  color: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.02,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_rounded,
                  color: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.02,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bar_chart_rounded,
                  color: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.02,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.15,
              ),
              Container(
                height: constrains.maxHeight * 0.1,
                width: constrains.maxWidth * 0.3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1534350131724-2a405f7108cb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.01,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.people_alt_sharp,
                  color: Colors.green.shade100,
                ),
              ),
              SizedBox(
                height: constrains.maxHeight * 0.01,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.green.shade100,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
