import 'package:flutter/material.dart';

class RoundChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: constraints.maxHeight * 0.8,
          width: constraints.maxWidth * 0.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: constraints.maxHeight * 0.5,
                width: constraints.maxWidth * 0.5,
                decoration: BoxDecoration(
                  //  border: Border.all(width: 2, color: Colors.pink),
                  shape: BoxShape.circle,

                  //  color: Colors.amber,
                  gradient: LinearGradient(
                      tileMode: TileMode.clamp,
                      colors: [Colors.green.shade100, Colors.green.shade600],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: constraints.minHeight * 0.43,
                      width: constraints.minWidth * 0.43,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("784"),
                          Text(
                            "Patients",
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Container(
                height: constraints.maxHeight * 0.1,
                width: constraints.minWidth * 0.55,
                child: Row(
                  children: [
                    Container(
                      height: constraints.minHeight * 0.1,
                      width: constraints.minWidth * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green.shade100),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Text("Women 40\%"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.03,
              ),
              Container(
                height: constraints.maxHeight * 0.1,
                width: constraints.minWidth * 0.55,
                child: Row(
                  children: [
                    Container(
                      height: constraints.minHeight * 0.1,
                      width: constraints.minWidth * 0.1,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green.shade400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      child: Text("Men 60\%"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
