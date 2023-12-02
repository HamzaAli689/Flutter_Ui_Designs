import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String iconData;
  final String title;
  final String subTitle;

  const MyList(
      {super.key,
      required this.iconData,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color:Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset(iconData),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white
                ),),
                SizedBox(height: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subTitle,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 8,
                        color: Colors.grey.shade500
                    ),),

              ],
            )
          ],
        )
      ],
    ),
        Icon(Icons.arrow_forward_ios,
        color: Colors.white,
        )
    ]
    )
    );
  }
}
