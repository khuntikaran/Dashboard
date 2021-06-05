import 'package:flutter/material.dart';

class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          height: constraints.minHeight * 0.3,
          width: constraints.minWidth * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Text(
                "10:00am",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey.shade500),
              ),
              SizedBox(
                width: constraints.minWidth * 0.03,
              ),
              Container(
                height: constraints.minHeight * 0.2,
                width: constraints.minWidth * 0.15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1526413232644-8a40f03cc03b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM2fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    "Sarah Hosten",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Diagnosis Stroke",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
