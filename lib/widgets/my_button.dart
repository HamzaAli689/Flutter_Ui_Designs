import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {

  final String iconPath;
  final String textButton;

  const MyButton({
    super.key,
    required this.iconPath,
    required this.textButton
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(height: 4,),
        Text(textButton,style: TextStyle(
          color: CupertinoColors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
