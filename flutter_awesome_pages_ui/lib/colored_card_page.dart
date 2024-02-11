import 'package:flutter/material.dart';
import 'package:flutter_awesome_pages_ui/widgets/colored_card.dart';

class ColoredCardPage extends StatefulWidget {
  @override
  ColoredCardPageState createState() {
    return new ColoredCardPageState();
  }
}

class ColoredCardPageState extends State<ColoredCardPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Custom Colored Card"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "With Header and Footer Example",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          ColoredCard(
            headerColor: Color(0xFF6078dc),
            footerColor: Color(0xFF6078dc),
            cardHeight: 250,
            elevation: 4,
            bodyColor: Color(0xFF6c8df6),
            showFooter: true,
            showHeader: true,
            bodyGradient: LinearGradient(
              colors: [
                Color(0xFF55affd).withOpacity(1),
                Color(0xFF6b8df8),
                Color(0xFF887ef1),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0, 0.2, 1],
            ),
            headerBar: HeaderBar(
              title: Text(
                "Header Text",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "Poppins"),
              ),
              leading: IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.showSnackBar(SnackBar(
                    content: Text('Hello!'),
                  ));
                },
              ),
              action: PopupMenuButton<String>(
                icon: Icon(Icons.menu),
                onSelected: choiceAction,
                itemBuilder: (BuildContext context) {
                  return Constants.choices.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ), backgroundColor: Colors.amberAccent, borderRadius: BorderSide.strokeAlignInside,
              padding: BorderSide.strokeAlignInside, gradient: LinearGradient(colors: []),
            ),
            bodyContent: Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                top: 30,
                right: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Maximize Tax detections and credits",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "* State Additional",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\u{0024} 547.43',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            footerBar: FooterBar(
              title: Text(
                "Footer Text",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "Poppins"),
              ), leading: Icon(Icons.ac_unit), 
              action: Icon(Icons.ac_unit),
              backgroundColor: Colors.limeAccent,
              borderRadius: BorderSide.strokeAlignInside, 
              padding: BorderSide.strokeAlignInside,
              gradient: LinearGradient(colors: []),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Only Header Example",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Remaining ColoredCard Widgets
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(
          Constants.Settings,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ));
    } else if (choice == Constants.Subscribe) {
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        content: Text(
          Constants.Subscribe,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ));
    } else if (choice == Constants.SignOut) {
      _scaffoldKey.currentState!.showSnackBar(SnackBar(
        duration: Duration(milliseconds: 200),
        content: Text(
          Constants.SignOut,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ));
    }
  }
}

class Constants {
  static const String Subscribe = 'Go Home Page';
  static const String Settings = 'Go Another Page';
  static const String SignOut = 'Refresh Page';

  static const List<String> choices = <String>[Subscribe, Settings, SignOut];
}
