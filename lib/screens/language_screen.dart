import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/screens/enter_screen.dart';
import 'package:muhtasham/utils/colors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        toolbarHeight: 64,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 14,
              ),
              child: SvgPicture.asset(
                height: 38,
                "assets/images/logoBig_eshikchi.svg",
              ),
            ),
            SvgPicture.asset(
              "assets/images/Group.svg",
            ),
          ],
        ),
        backgroundColor: backColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Добро пожаловать\nв Eshikchi",
                    style: GoogleFonts.onest(
                        fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48, bottom: 32),
                    child: Text(
                      "Выберите язык приложения",
                      style: GoogleFonts.onest(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff667085),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnterScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 326,
                        height: 60,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(color: const Color(0xffE5E7EB))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/uzbekistan.svg",
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "O‘zbek",
                                  style: GoogleFonts.onest(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 32),
                      child: SizedBox(
                        width: 326,
                        height: 60,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EnterScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.circular(16),
                                border:
                                    Border.all(color: const Color(0xffE5E7EB))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/russia.svg",
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "Русский",
                                  style: GoogleFonts.onest(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EnterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Пропустить",
                        style: GoogleFonts.onest(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
