import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/pages/views/show_buyurtma.dart';

import '../../utils/colors.dart';

class BuyurtmalarTarixi extends StatefulWidget {
  const BuyurtmalarTarixi({super.key});

  @override
  State<BuyurtmalarTarixi> createState() => _BuyurtmalarTarixiState();
}

class _BuyurtmalarTarixiState extends State<BuyurtmalarTarixi> {
  final List<Map<String, String>> items = [
    {"title": "BU-00023", "date": "10.01.2024 10:00"},
    {"title": "BU-00023", "date": " • 10.01.2024 10:00"},
    {"title": "BU-00023", "date": " • 10.01.2024 10:00"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFB),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        backgroundColor: white,
        title: Text(
          "Buyurtmalar tarixi",
          style: GoogleFonts.onest(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShowBuyurtma(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 4),
              child: Card(
                color: white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color:
                          index == 0 ? Color(0xffEAECF0) : Color(0xffA6F4C5)),
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                child: ListTile(
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        color: index == 0
                            ? const Color(0xffF5FAFF)
                            : Color(0xffF6FEF9),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: index == 0
                                ? const Color(0xffD1E9FF)
                                : Color(0xffD1FADF))),
                    child: Center(
                        child: index == 0
                            ? SvgPicture.asset('assets/images/shopping1.svg')
                            : SvgPicture.asset(
                                'assets/images/shopping-green.svg')),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Row(
                    children: [
                      index == 0
                          ? SizedBox()
                          : Text(
                              "Yuklandi",
                              style: GoogleFonts.onest(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: const Color(0xff12B76A)),
                            ),
                      Text(
                        items[index]["date"]!,
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: const Color(0xff667085)),
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
