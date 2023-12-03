import 'package:flutter/material.dart';
import '../widgets/circle_avatar.dart';

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
            IconButton(onPressed: () {}, icon: Icon(Icons.shield_moon_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Center(child: Circle_Avatar()),
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
                          backgroundColor: Colors.yellow),
                      onPressed: () {},
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ))),
              SizedBox(height: 40,),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black12
                  ),
                  child: Icon(Icons.settings,color: Colors.blue),
                ),
                title: Text("Settings",style: TextStyle(
                  color: Colors.black,
                      fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 18
                )),
                trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black12
                  ),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
