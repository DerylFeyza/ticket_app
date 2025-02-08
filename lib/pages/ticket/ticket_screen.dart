import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/res/data/json_data.dart';
import 'package:ticket_app/res/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/widgets/icons/dot_icon.dart';
import 'package:ticket_app/widgets/tabs_widget.dart';
import 'package:ticket_app/widgets/text_style_ticket.dart';
import 'package:ticket_app/widgets/ticket_card.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Your Ticket",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          TabsWidget(leftText: "Upcoming", rightText: "Previous"),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                row1(screen),
                SizedBox(
                  height: 12,
                  child: AppLayoutBuilder(
                    color: Colors.grey,
                    divider: 10,
                  ),
                ),
                row2(screen),
                SizedBox(
                  height: 12,
                  child: AppLayoutBuilder(
                    color: Colors.grey,
                    divider: 10,
                  ),
                ),
                rowContainer(
                    leftHeader: "Skibidi",
                    leftValue: "Passanger",
                    rightHeader: "562433356",
                    rightValue: "passport"),
                SizedBox(
                  height: 12,
                  child: AppLayoutBuilder(
                    color: Colors.grey,
                    divider: 10,
                  ),
                ),
                rowContainer(
                    leftHeader: "Flight",
                    leftValue: "BA 1234",
                    rightHeader: "Seat",
                    rightValue: "12A"),
                SizedBox(
                  height: 12,
                  child: AppLayoutBuilder(
                    color: Colors.grey,
                    divider: 10,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TicketCard(ticket: ticketList[0]),
        ],
      ),
    );
  }

  Container rowContainer(
      {required String leftHeader,
      required String leftValue,
      required String rightHeader,
      required String rightValue}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleTicket(
                text: leftHeader,
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: leftValue,
                color: Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextStyleTicket(
                text: rightHeader,
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: rightValue,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container row1(Size screen) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleTicket(
                text: "hawkatoa",
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: "hawkatoa",
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            width: screen.width * 0.125,
          ),
          Expanded(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DotIcon(
                              color: Colors.cyan,
                            ),
                            DotIcon(
                              color: Colors.cyan,
                            ),
                          ]),
                    ),
                    Center(
                      child: Icon(
                        FluentSystemIcons.ic_fluent_airplane_filled,
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3,
                ),
                TextStyleTicket(
                  text: "hawkatoa",
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            width: screen.width * 0.125,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextStyleTicket(
                text: "hawkatoa",
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: "hawkatoa",
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container row2(Size screen) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextStyleTicket(
                text: "hawkatoa",
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: "hawkatoa",
                color: Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextStyleTicket(
                text: "hawkatoa",
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: "hawkatoa",
                color: Colors.black,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextStyleTicket(
                text: "hawkatoa",
                textStyle: AppStyles.headlineStyle3,
                color: Colors.black,
              ),
              SizedBox(
                height: 3,
              ),
              TextStyleTicket(
                text: "hawkatoa",
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
