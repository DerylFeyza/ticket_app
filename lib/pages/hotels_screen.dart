import 'package:flutter/material.dart';
import 'package:ticket_app/res/data/json_data.dart';
import 'package:ticket_app/res/styles/app_styles.dart';
import 'package:ticket_app/widgets/hotel_card.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Hotels"),
          backgroundColor: AppStyles.bgColor,
        ),
        backgroundColor: AppStyles.bgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.5),
              itemCount: hotelList.length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'hotel',
                        arguments: {'data': hotelList[index]});
                  },
                  child: HotelCard(hotelData: hotelList[index]))),
        ));
  }
}
