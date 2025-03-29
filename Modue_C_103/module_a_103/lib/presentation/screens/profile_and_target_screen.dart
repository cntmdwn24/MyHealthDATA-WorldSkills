import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:module_a_103/presentation/components/custom_button.dart';
import 'package:module_a_103/presentation/components/custom_text_field.dart';
import 'package:module_a_103/presentation/screens/main_screen.dart';
import 'package:module_a_103/presentation/screens/sign_in_screen.dart';

import '../components/custom_text_field2.dart';

class ProfileAndTargetScreen extends StatefulWidget {
  const ProfileAndTargetScreen({super.key});

  @override
  State<ProfileAndTargetScreen> createState() => _ProfileAndTargetScreenState();
}

class _ProfileAndTargetScreenState extends State<ProfileAndTargetScreen> {
  bool isMan = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController stepsController = TextEditingController();
  final TextEditingController waterController = TextEditingController();

  void complete() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
    return;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xff393939),
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white),
          ),
          title: Text(
            'Profile & Target',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Hi {USERNAME}',
                      style: TextStyle(
                        color: Color(0xff393939),
                        fontSize: 28,
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 235),
                  child: Text(
                    'Profile,',
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontSize: 30,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isMan = true;
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(
                            width: isMan ? 1.5 : 0.001,
                            color: Colors.grey.shade500,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.man,
                              size: 90,
                              color:
                                  isMan ? Colors.black : Colors.grey.shade500,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Male',
                              style: TextStyle(
                                color:
                                    isMan ? Colors.black : Colors.grey.shade500,
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isMan = false;
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(
                            width: isMan ? 0.001 : 1.5,
                            color: Colors.grey.shade500,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.woman,
                              size: 90,
                              color:
                                  isMan ? Colors.grey.shade500 : Colors.black,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Female',
                              style: TextStyle(
                                color:
                                    isMan ? Colors.grey.shade500 : Colors.black,
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                CustomTextField(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Competitor99',
                ),
                SizedBox(height: 15),
                CustomTextField2(
                  svg: SvgPicture.asset(
                    'assets/icons/height.svg',
                    width: 10,
                    height: 10,
                  ),
                  hintText: '182.5',
                  suffixText: 'Cm',
                ),
                SizedBox(height: 15),
                CustomTextField2(
                  hintText: '80.5',
                  svg: SvgPicture.asset('assets/icons/weight.svg'),
                  suffixText: 'Kg',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: Icon(Icons.cake_outlined),
                  hintText: 'Competitor99',
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(right: 235),
                  child: Text(
                    'Profile,',
                    style: TextStyle(
                      color: Color(0xff393939),
                      fontSize: 30,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CustomTextField2(
                  hintText: '5,000',
                  svg: SvgPicture.asset(
                    'assets/icons/footprint.svg',
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  suffixText: 'Steps',
                ),
                SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: Icon(Icons.water_drop_outlined),
                  hintText: '2,000',
                  suffixText: 'ml',
                ),
                SizedBox(height: 30),
                CustomButton(
                  onTap: () {
                    complete();
                  },
                  text: 'Complete',
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
