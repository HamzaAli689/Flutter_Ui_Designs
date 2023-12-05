import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:profile_app_ui/screens/profile_screen_balck.dart';

import '../widgets/circle_avatar.dart';
import '../widgets/profile_menu.dart';

class Edit_Profile_black_screen extends StatefulWidget {
  const Edit_Profile_black_screen({super.key});

  @override
  State<Edit_Profile_black_screen> createState() => _Edit_Profile_black_screenState();
}

class _Edit_Profile_black_screenState extends State<Edit_Profile_black_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile_Screen_Black()));
          },
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white),
        ),
        title: Text("Edit Profile",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: true,
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
                        LineAwesomeIcons.camera
                    ),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Full Name",style: TextStyle(color: Colors.yellowAccent)),
                        prefixIconColor: Colors.yellowAccent,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.person_outline_rounded)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("E-Mail",style: TextStyle(color: Colors.yellowAccent)),
                        prefixIconColor: Colors.yellowAccent,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(LineAwesomeIcons.envelope_1,)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Phone Number",style: TextStyle(color: Colors.yellowAccent)),
                        prefixIconColor: Colors.yellowAccent,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.phone)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(

                        label: Text("Password",style: TextStyle(color: Colors.yellowAccent)),
                        prefixIconColor: Colors.yellowAccent,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(LineAwesomeIcons.fingerprint)
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellowAccent),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_Profile_black_screen()));
                        },
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        )),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text('Joined 5 December 2023',style: TextStyle(
                        color: Colors.white
                      )),
                      SizedBox(width: 50,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white24
                          ),
                          onPressed: (){}, child: Text("Delete",style: TextStyle(color: Colors.red),))
                    ],
                  )
                ],
              )),
            )
          ],
        ),

      ),

    );
  }
}
