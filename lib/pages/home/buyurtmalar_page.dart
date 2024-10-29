import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/pages/views/show_buyurtma.dart';

import '../../utils/colors.dart';

class BuyurtmalarPage extends StatefulWidget {
  const BuyurtmalarPage({super.key});

  @override
  State<BuyurtmalarPage> createState() => _BuyurtmalarPageState();
}

class _BuyurtmalarPageState extends State<BuyurtmalarPage> {
  final List<Map<String, String>> items = [
    {"title": "“XONDAMIR HOLDING” MCHJ", "number": "BU-00023"},
    {"title": "“Korzinka-savdo” MCHJ", "number": "BU-00023"},
    {"title": "“XONDAMIR HOLDING” MCHJ", "number": "BU-00023"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
              child: Card(
                color: white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0xffEAECF0)),
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
                child: ListTile(
                  leading: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        color: const Color(0xffF5FAFF),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffD1E9FF))),
                    child: Center(
                      child: SvgPicture.asset('assets/images/shopping1.svg'),
                    ),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Text(
                    items[index]["number"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color(0xff667085)),
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
