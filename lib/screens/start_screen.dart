import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:muhtasham/pages/home/home_page.dart';
import 'package:muhtasham/utils/colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5FAFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/bigText.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 72.09),
            child: Column(
              children: [
                Text(
                  "Salom!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hurmatli ta’minotchi, siz bilan hamkorligimiz bardavom bo’lsin!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            child: Stack(
              alignment: const Alignment(0, 0.3),
              children: [
                SvgPicture.asset(
                  'assets/images/Union.svg',
                ),
                SizedBox(
                  width: 85.91,
                  height: 85.91,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false,
                      );
                    },
                    child: SvgPicture.asset(
                      "assets/images/arrow-right.svg",
                      fit: BoxFit.none,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      shadowColor: Colors.transparent,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
