import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../widgets/circle_avatar.dart';
import '../widgets/profile_menu.dart';

class Edit_Profile_screen extends StatefulWidget {
  const Edit_Profile_screen({super.key});

  @override
  State<Edit_Profile_screen> createState() => _Edit_Profile_screenState();
}

class _Edit_Profile_screenState extends State<Edit_Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Edit Profile",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
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
                        label: Text("Full Name"),
                        prefixIconColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.person_outline_rounded)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("E-Mail"),
                        prefixIconColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.person_outline_rounded)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Phone Number"),
                        prefixIconColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.person_outline_rounded)
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("Password"),
                        prefixIconColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                        prefixIcon:Icon(Icons.person_outline_rounded)
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Edit_Profile_screen()));
                        },
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w300),
                        )),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text('Joined 5 December 2023'),
                      SizedBox(width: 50,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey
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
