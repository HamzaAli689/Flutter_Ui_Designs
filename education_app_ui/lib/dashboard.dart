import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  List cateName = [
    "Classes",
    "Category",
    "Course",
    "Book Store",
    "Live Course",
    "Leader Board"
  ];
  List<Color> cateColors = [
    Colors.green,
    Colors.orange,
    Colors.brown,
    Colors.red,
    Colors.purple.shade500,
    Colors.indigo,
  ];
  List<Icon> cateIcons = [
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 28,
    ),
    Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 28,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Stack(
            children: [
              Container(
                padding:
                EdgeInsets.only(bottom: 15, left: 15, right: 15, top: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child:
                            Icon(Icons.sort, color: Colors.white, size: 40),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/Profile.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hamza Ali",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Last Update : 2 Dec 2023",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ]),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here ...",
                              hintStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.499,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.499,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(70))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    children: [
                      GridView.builder(
                        itemCount: cateName.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1.1),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: cateColors[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: cateIcons[index],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                cateName[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.6)),
                              )
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
