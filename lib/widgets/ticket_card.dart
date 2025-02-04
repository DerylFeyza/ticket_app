import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/res/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/widgets/icons/dot_icon.dart';
import 'package:ticket_app/widgets/text_style_ticket.dart';

class TicketCard extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketCard({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SizedBox(
      width: screen.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.brand,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextStyleTicket(
                              text: ticket['from']['code'],
                              textStyle: AppStyles.headlineStyle3),
                          SizedBox(
                            height: 3,
                          ),
                          TextStyleTicket(
                            text: ticket['from']['name'],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screen.width * 0.1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        DotIcon(),
                                        DotIcon(),
                                      ]),
                                ),
                                SizedBox(
                                  height: 24,
                                  child: AppLayoutBuilder(
                                    divider: 7,
                                  ),
                                ),
                                Center(
                                  child: Icon(
                                    FluentSystemIcons.ic_fluent_airplane_filled,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            TextStyleTicket(
                              text: ticket['flying_time'],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screen.width * 0.1,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextStyleTicket(
                              align: TextAlign.end,
                              text: ticket['to']['code'],
                              textStyle: AppStyles.headlineStyle3),
                          SizedBox(
                            height: 3,
                          ),
                          TextStyleTicket(
                            text: ticket['to']['name'],
                            align: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
            Container(
                height: 20,
                decoration: BoxDecoration(color: AppStyles.brandOrange),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppStyles.bgColor,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)))),
                    ),
                    Expanded(
                      child: AppLayoutBuilder(
                        divider: 16,
                        width: 8,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppStyles.bgColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)))),
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.brandOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextStyleTicket(
                          text: ticket['date'],
                          textStyle: AppStyles.headlineStyle3),
                      TextStyleTicket(
                          text: "Date", textStyle: AppStyles.headlineStyle4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextStyleTicket(
                          text: ticket['departure_time'],
                          textStyle: AppStyles.headlineStyle3),
                      TextStyleTicket(
                          text: "Departure Time",
                          textStyle: AppStyles.headlineStyle4),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextStyleTicket(
                          text: ticket['number'],
                          textStyle: AppStyles.headlineStyle3),
                      TextStyleTicket(
                          text: "Number", textStyle: AppStyles.headlineStyle4),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
