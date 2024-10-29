import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/pages/views/succsess_buyurtma.dart';

import '../../utils/colors.dart';

class ShowBuyurtma extends StatelessWidget {
  const ShowBuyurtma({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productList = [
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "quantity": "10 dona x 200 000 000 UZS",
        "totall": "2 000 000 000 UZS"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "quantity": "10 dona x 200 000 000 UZS",
        "totall": "2 000 000 000 UZS"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "quantity": "10 dona x 200 000 000 UZS",
        "totall": "2 000 000 000 UZS"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "quantity": "10 dona x 200 000 000 UZS",
        "totall": "2 000 000 000 UZS"
      },

      // You can add more items here if needed
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff0063FF),
                          Color(0xff004FCD),
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          border: const Border(),
                          color: const Color(0xffF5FAFF),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/shopping1.svg",
                          fit: BoxFit.none,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 12),
                        child: Text(
                          "“XOVANDAMIR HOLDING” MCHJ",
                          style: GoogleFonts.onest(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: white),
                        ),
                      ),
                      Text(
                        "BU-00023 buyurtmaning umumiy summasi",
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xffE6EFFF)),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "81 612 000 UZS",
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: const Color(0xffF6FEF9)),
                      ),
                      Text(
                        "10.01.2024 10:00",
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xffF6FEF9)),
                      ),
                    ],
                  )),
            ),
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: productList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Card(
                            color: white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Color(0xffEAECF0), width: 1),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productList[index]["name"]!,
                                    style: GoogleFonts.onest(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        productList[index]["quantity"]!,
                                        style: GoogleFonts.onest(
                                            color: const Color(0xff667085),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        productList[index]["totall"]!,
                                        style: GoogleFonts.onest(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: white,
                        border: const Border.symmetric(
                            horizontal: BorderSide(
                                width: 0.7,
                                color: Color.fromARGB(92, 175, 175, 175)))),
                    height: 136,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Yukni olish sanasi",
                                style: GoogleFonts.onest(
                                  color: const Color(0xff667085),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "10.01.2024",
                                style: GoogleFonts.onest(
                                  color: const Color(0xff101828),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 28, top: 8, left: 16, right: 16),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SuccsessBuyurtma(),
                                  ),
                                );
                                // Handle button action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: blue, // Background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                              ),
                              child: Text(
                                "Tasdiqlash",
                                style: GoogleFonts.onest(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
