import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../widgets/circle_avatar.dart';
import '../widgets/text_feild.dart';
import 'edit_profile.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text("Profile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          centerTitle: true,
          automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_Screen_Black()));
            }, icon: Icon(Icons.shield_moon_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
                  Center(child: Stack(
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
                              color: Colors.yellowAccent
                          ),
                          child: Icon(
                              LineAwesomeIcons.alternate_pencil
                          ),
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
                    color: Colors.black),
              ),
              Text(
                "Hamzaalivr33@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                    color: Colors.black),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_Profile_screen()));
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ))),
              SizedBox(
                height: 40,
              ),
              ProfileMenuWidget(
                title: 'Settings',
                icon: LineAwesomeIcons.cog,
                onpress: () {},
                textColor: Colors.black,
              ),
              SizedBox(height: 7),
              ProfileMenuWidget(
                title: 'Billing Details',
                icon: LineAwesomeIcons.wallet,
                onpress: () {},
                textColor: Colors.black,
              ),
              SizedBox(height: 7),
              ProfileMenuWidget(
                title: 'User Management',
                icon: LineAwesomeIcons.user_check,
                onpress: () {},
                textColor: Colors.black,
              ),
              Divider(),
              SizedBox(height: 15),
              ProfileMenuWidget(
                title: 'Information',
                icon: LineAwesomeIcons.info,
                onpress: () {},
                textColor: Colors.black,
              ),
              SizedBox(height: 7),
              ProfileMenuWidget(
                title: 'Logout',
                icon: LineAwesomeIcons.alternate_sign_out,
                onpress: () {},
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


