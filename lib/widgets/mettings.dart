import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (
      BuildContext context,
      BoxConstraints constraints,
    ) {
      return ListView.separated(
          itemBuilder: (context, index) => Container(
                height: constraints.minHeight * 0.4,
                width: constraints.minWidth * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 6),
                      color: Colors.grey.shade100,
                      blurRadius: 3,
                    ),
                    BoxShadow(
                      offset: Offset(0, -6),
                      color: Colors.grey.shade100,
                      blurRadius: 3,
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Team Metting",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        "13:30-14:50",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(Icons.bookmark_outline_outlined),
                    ),
                    Row(
                      children: [
                        Container(
                          height: constraints.minHeight * 0.13,
                          width: constraints.minWidth * 0.3,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                child: Container(
                                  height: constraints.minHeight * 0.13,
                                  width: constraints.minWidth * 0.13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    // color: Colors.amber,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                child: Container(
                                  height: constraints.minHeight * 0.13,
                                  width: constraints.minWidth * 0.13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.purple,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE1fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 53,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: constraints.minHeight * 0.13,
                                  width: constraints.minWidth * 0.13,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  ),
                                  child: Text(
                                    "+4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade200),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          splashColor: Colors.green.shade300,
                          color: Colors.grey.shade900,
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_rounded,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: constraints.minHeight * 0.03,
              ),
          itemCount: 5);
    });
  }
}
