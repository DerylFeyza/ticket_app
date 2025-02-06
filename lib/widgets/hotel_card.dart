import 'package:flutter/material.dart';
import 'package:ticket_app/res/media.dart';
import 'package:ticket_app/res/styles/app_styles.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotelData});
  final Map<String, dynamic> hotelData;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      width: screen.width * 0.6,
      height: 350,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppStyles.brand, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                  image: AssetImage(
                      '${AppMedia.baseImgPath}/${hotelData['image']}'),
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, left: 10),
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
                ),
                Text(hotelData['location'],
                    style:
                        AppStyles.headlineStyle3.copyWith(color: Colors.white)),
                Text("Rp. ${hotelData['price']} / Night",
                    style:
                        AppStyles.headlineStyle2.copyWith(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
