import 'package:flutter/material.dart';

class My_Cards extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expiredMonth;
  final int expiredYear;
  final String cardType;

  const My_Cards(
      {super.key,
      required this.balance,
      required this.cardnumber,
      required this.expiredMonth,
      required this.expiredYear,
      required this.cardType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Colors.white.withOpacity(0.03),
                  Colors.white.withOpacity(0.03),
                ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image(
                      image: AssetImage(cardType),
                      height: 50,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Text("\$" + balance.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(cardnumber.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              Text(expiredMonth.toString() + "/" + expiredYear.toString(),
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
            )
          ],
        ),
      ),
    );
  }
}
