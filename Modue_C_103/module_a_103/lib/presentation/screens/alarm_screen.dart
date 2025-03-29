import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlarmScreen extends StatelessWidget {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff363636),
        title: Text(
          'MY Health DATA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'NotoSansKR',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Transform.rotate(
              angle: 1.57,
              child: Icon(Icons.keyboard_control, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    'Alarms',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/food.svg',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '15:00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Switch(
                    value: bool.fromEnvironment('adsf'),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/food.svg',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '15:00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Switch(
                    value: bool.fromEnvironment('adsf'),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.water_drop_outlined, size: 50),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '15:00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Switch(
                    value: bool.fromEnvironment('adsf'),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/food.svg',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '15:00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Switch(
                    value: bool.fromEnvironment('adsf'),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '15:00',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120),
                  Switch(
                    value: bool.fromEnvironment('adsf'),
                    onChanged: (value) {},
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
