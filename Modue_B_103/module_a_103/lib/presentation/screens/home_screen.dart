import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Hello Competitor99,',
                        style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 25,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Container(
                  width: 340,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.man, size: 100),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '182.5',
                                    style: TextStyle(
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text('Cm', style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '80.5',
                                    style: TextStyle(
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text('Kg', style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Container(
                                  width: 1,
                                  height: 30,
                                  color: Colors.grey,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    '24.17',
                                    style: TextStyle(
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text('bmi', style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          SvgPicture.asset(
                            'assets/images/re.svg',
                            width: 10,
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2,578',
                            style: TextStyle(
                              color: Color(0xff393939),
                              fontSize: 23,
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '/ 5,000 Steps',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'NotoSansKR',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 140,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    'Heart Rate',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.white,
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/heart.svg',
                          width: 10,
                          height: 10,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2,578',
                            style: TextStyle(
                              color: Color(0xff393939),
                              fontSize: 23,
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Color(0xff393939),
                              ),
                              child: Center(
                                child: Text(
                                  'Measure',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            width: 130,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Steps',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/food.jpg',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/burger.jpg',
                            width: 60,
                            height: 60,
                          ),
                          Image.asset(
                            'assets/images/breakfast.jpg',
                            width: 60,
                            height: 60,
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      IconButton(
                        onPressed: () {},
                        icon: Transform.rotate(
                          angle: 1.57,
                          child: Icon(
                            Icons.keyboard_control,
                            color: Color(0xff393939),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Water',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.water_drop_outlined, size: 40),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '250',
                                style: TextStyle(
                                  color: Color(0xff393939),
                                  fontSize: 20,
                                  fontFamily: 'NotoSansKR',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('/ 2,000 ml'),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xff393939),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+ 100ML',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xff393939),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+250ml',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/cup.svg',
                            width: 30,
                            height: 30,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.keyboard_control,
                                color: Color(0xff393939),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
