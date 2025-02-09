import 'package:flutter/material.dart';
import 'package:ticket_app/res/data/json_data.dart';
import 'package:ticket_app/res/media.dart';
import 'package:intl/intl.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late Map<String, dynamic> hotelData;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)?.settings.arguments as Map? ?? {};
    hotelData = args['data'] ?? hotelList[0];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                  '${AppMedia.baseImgPath}/${hotelData['image']}',
                  fit: BoxFit.cover),
            ),
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Text(
                hotelData['place'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    textAlign: TextAlign.end,
                    hotelData['location'],
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Text(
                "Rp. ${NumberFormat("#,###", "id_ID").format(hotelData['price'])} / Night",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "Immediately summons 2 Revenant's Shadow(s) in attack range (up to 3 at a time, they remain after skill expires). Attack Interval is greatly increased. ATK +180%. Attacks deal 220% ATK. Splash area is greatly increased. Talent 1 trigger chance is increased to 100%."),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "More Images",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '${AppMedia.baseImgPath}/${hotelData['image']}',
                            fit: BoxFit
                                .cover, // Optional: Adjust how the image fits the container
                          ),
                        ),
                      )),
            )
          ]))
        ],
      ),
    );
  }
}
