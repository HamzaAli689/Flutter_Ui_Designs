import 'package:degital_wallet_app_ui/widgets/my_button.dart';
import 'package:degital_wallet_app_ui/widgets/my_cards.dart';
import 'package:degital_wallet_app_ui/widgets/my_lists.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      backgroundColor: Colors.black.withOpacity(0.03),
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
                            color: Colors.white,
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
                      child: Icon(Icons.notifications),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
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
                        cardType: "images/visa.jpeg"),
                    My_Cards(
                        balance: 6500,
                        cardnumber: 9876789543,
                        expiredMonth: 7,
                        expiredYear: 2028,
                        cardType: "images/master_card.jpeg"),
                    My_Cards(
                        balance: 6757,
                        cardnumber: 645454494376473,
                        expiredMonth: 6,
                        expiredYear: 2029,
                        cardType: "images/visa.jpeg"),
                    My_Cards(
                        balance: 44334,
                        cardnumber: 46537653484375,
                        expiredMonth: 4,
                        expiredYear: 2026,
                        cardType: "images/master_card.jpeg"),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: ExpandingDotsEffect(
                    activeDotColor: Colors.white, dotWidth: 10, dotHeight: 10),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                        iconPath: "images/send_money.jpeg", textButton: "Send"),
                    MyButton(
                        iconPath: "images/bill.png", textButton: "Receive"),
                    MyButton(iconPath: "images/card.jpeg", textButton: "Pay"),
                    MyButton(iconPath: "images/bill.png", textButton: "Bills"),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  MyList(
                      iconData: "images/statistic.jpeg",
                      title: "Statistic",
                      subTitle: "Payment & Income"
                  ),
                  MyList(
                      iconData: "images/transection.jpeg",
                      title: "Transection",
                      subTitle: "Payment & Income"
                  ),
                  MyList(
                      iconData: "images/bill.png",
                      title: "Bills History",
                      subTitle: "Payment & Income"
                  ),
                  MyList(
                      iconData: "images/card.jpeg",
                      title: "Payment History",
                      subTitle: "Payment & Income"
                  ),
                ],
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
