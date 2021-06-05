import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isMe = true;
    return LayoutBuilder(builder: (
      BuildContext context,
      BoxConstraints constraints,
    ) {
      return Stack(
        children: [
          Positioned(
            right: 10,
            top: 10,
            child: Icon(
              Icons.notifications_rounded,
              size: constraints.maxWidth * 0.08,
            ),
          ),
          Positioned(
            top: 50,
            left: 140,
            child: Container(
              height: constraints.minHeight * 0.25,
              width: constraints.minWidth * 0.25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 222,
            left: 134,
            child: Text(
              'Your activity today',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade300),
            ),
          ),
          Positioned(
            top: 258,
            left: 171,
            child: Text(
              '86\%',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                  fontSize: 35),
            ),
          ),
          Positioned(
            left: 80,
            bottom: 380,
            child: Container(
              height: constraints.minHeight * 0.08,
              width: constraints.minWidth * 0.65,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'All activity',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        height: constraints.minHeight * 0.1,
                        width: constraints.minWidth * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade200),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 2,
            child: Container(
              width: constraints.minWidth * 0.8,
              height: constraints.minHeight * 0.45,
              child: Column(
                children: [
                  Container(
                    height: constraints.minHeight * 0.08,
                    width: constraints.minWidth * 0.65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Support Chat',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: constraints.minHeight * 0.1,
                            width: constraints.minWidth * 0.1,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade200,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Joseph',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Column(
                    crossAxisAlignment: isMe
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: constraints.minHeight * 0.07,
                            width: constraints.minWidth * 0.07,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                height: constraints.minHeight * 0.07,
                                width: constraints.minWidth * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Hey, Sarah how can i help you',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              //=======================================================================
                              Container(
                                width: constraints.minWidth * 0.15,
                                child: Text(
                                  '5:46pm',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: constraints.minHeight * 0.05,
                      ),
                      //Second chat bubble---------------------------------->>>>>>>>>>>>>>>>>>>>>>>.
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                height: constraints.minHeight * 0.07,
                                width: constraints.minWidth * 0.35,
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Hey, How to add a new patients?',
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: constraints.minWidth * 0.31,
                                child: Text(
                                  '6:06pm',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.grey.shade400),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: constraints.minHeight * 0.07,
                            width: constraints.minWidth * 0.07,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTc4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 7,
            left: 40,
            child: Container(
              alignment: Alignment.centerLeft,
              height: constraints.minHeight * 0.05,
              width: constraints.minWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
                // border: Border.all(width: 2, color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type a message...',
                    suffixIcon: Icon(Icons.send_rounded),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
