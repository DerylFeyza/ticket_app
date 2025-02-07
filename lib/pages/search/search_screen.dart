import 'package:flutter/material.dart';
import 'package:ticket_app/pages/search/widgets/find_button.dart';
import 'package:ticket_app/pages/search/widgets/search_tabs.dart';
import 'package:ticket_app/pages/search/widgets/text_bubble.dart';
import 'package:ticket_app/res/media.dart';
import 'package:ticket_app/res/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_subheader.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "What are \nyou looking for?",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          SearchTabs(),
          SizedBox(
            height: 25,
          ),
          TextBubble(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          SizedBox(
            height: 20,
          ),
          TextBubble(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          SizedBox(
            height: 25,
          ),
          FindButton(),
          SizedBox(
            height: 40,
          ),
          AppSubheader(
              subheader: "Upcoming Flights",
              linkText: "View All",
              linkTo: "all_tickets"),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screen.width * 0.42,
                height: 400,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(
                                '${AppMedia.baseImgPath}/igmael.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "20 discount yadayadayadayadayadayadayada",
                      style: AppStyles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: screen.width * 0.42,
                          height: 190,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF3AB8B8)),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount \nFor surveys ",
                                  style: AppStyles.headlineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Discount For Filling surveys or sumnth",
                                  style: AppStyles.headlineStyle3
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xFF189999))),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: screen.width * 0.42,
                      height: 190,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFEC6545)),
                      child: Column(
                        children: [
                          Text(
                            "skibiti toilet",
                            style: AppStyles.headlineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "skibiti toilet",
                            style: AppStyles.headlineStyle2
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            "skibiti toilet",
                            style: AppStyles.headlineStyle2
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
