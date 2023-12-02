import 'package:degital_wallet_app_ui/widgets/my_cards.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            fontSize: 28,
                            //fontWeight: FontWeight.bold,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.notifications
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 200,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    My_Cards(
                        balance: 78900,
                        cardnumber: 1234567890763,
                        expiredMonth: 10,
                        expiredYear: 2025,
                        cardType: "images/visa.jpeg"
                    ),
                    My_Cards(
                        balance: 6500,
                        cardnumber: 9876789543,
                        expiredMonth: 7,
                        expiredYear: 2028,
                        cardType: "images/master_card.jpeg"
                    ),
                    My_Cards(
                        balance: 6757,
                        cardnumber: 645454494376473,
                        expiredMonth: 6,
                        expiredYear: 2029,
                        cardType: "images/visa.jpeg"
                    ),
                    My_Cards(
                        balance: 44334,
                        cardnumber: 46537653484375,
                        expiredMonth: 4,
                        expiredYear: 2026,
                        cardType: "images/master_card.jpeg"
                    ),
                  ],
                ),

              ),
              SizedBox(height: 15,),


            ],
          ),
        ),
      ),
    );
  }
}


