import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/res/data/json_data.dart';
import 'package:ticket_app/res/media.dart';
import 'package:ticket_app/res/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_subheader.dart';
import 'package:ticket_app/widgets/hotel_card.dart';
import 'package:ticket_app/widgets/ticket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning", style: AppStyles.headlineStyle3),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Book Tickets", style: AppStyles.headlineStyle1)
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(AppMedia.icon))),
                        width: 50,
                        height: 50,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_search_filled,
                            color: Color(0xFFBFC205),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  AppSubheader(
                      subheader: "Upcoming Flights",
                      linkText: "View All",
                      linkTo: "all_tickets"),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: ticketList
                              .map((ticket) => Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: TicketCard(
                                      ticket: ticket,
                                    ),
                                  ))
                              .toList())),
                  SizedBox(
                    height: 40,
                  ),
                  AppSubheader(
                      subheader: "Hotels",
                      linkText: "View All",
                      linkTo: "all_tickets"),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList
                          .map((hotel) => Container(
                                margin: EdgeInsets.only(right: 15),
                                child: HotelCard(hotelData: hotel),
                              ))
                          .toList(),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
