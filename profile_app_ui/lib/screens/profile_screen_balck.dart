import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:profile_app_ui/screens/profile.dart';
import '../widgets/circle_avatar.dart';
import '../widgets/profile_menu.dart';
import 'edit_screen_black.dart';

class Profile_Screen_Black extends StatefulWidget {
  const Profile_Screen_Black({super.key});

  @override
  State<Profile_Screen_Black> createState() => _Profile_Screen_BlackState();
}

class _Profile_Screen_BlackState extends State<Profile_Screen_Black> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          ),
          title: Text("Profile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile_Screen()));
                },
                icon: Icon(
                  Icons.shield_moon,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Center(
                  child: Stack(
                children: [
                  Circle_Avatar(),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.yellowAccent),
                      child: Icon(LineAwesomeIcons.alternate_pencil),
                    ),
                  )
                ],
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Hamza Ali",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
              Text(
                "Hamzaalivr33@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellowAccent),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Edit_Profile_black_screen()));
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700),
                      ))),
              SizedBox(
                height: 40,
              ),
              ProfileMenuWidget(
                title: 'Settings',
                icon: LineAwesomeIcons.cog,
                onpress: () {},
                textColor: Colors.white,
                iconcolor: Colors.yellowAccent, containerColor: Colors.white24, arrowColor: Colors.white10,
              ),
              SizedBox(height: 7),
              ProfileMenuWidget(
                title: 'Billing Details',
                icon: LineAwesomeIcons.wallet,
                onpress: () {},
                textColor: Colors.white,
                iconcolor: Colors.yellowAccent, containerColor: Colors.white24, arrowColor: Colors.white10,
              ),
              SizedBox(height: 7),
              ProfileMenuWidget(
                title: 'User Management',
                icon: LineAwesomeIcons.user_check,
                onpress: () {},
                textColor: Colors.white,
                iconcolor: Colors.yellowAccent, containerColor: Colors.white24, arrowColor: Colors.white10,
              ),
              Divider(),
              SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'Information',
                icon: LineAwesomeIcons.info,
                onpress: () {},
                textColor: Colors.white,
                iconcolor: Colors.yellowAccent, containerColor: Colors.white24, arrowColor: Colors.white10,
              ),
              SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100), color: Colors.white10),
                    child: Icon(LineAwesomeIcons.alternate_sign_out, color: Colors.yellowAccent),
                  ),
                  title: Text("Logout",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 15)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
