// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/utils/colors.dart';

import '../views/detail_screen.dart';

class SorovlarPage extends StatefulWidget {
  const SorovlarPage({super.key});

  @override
  State<SorovlarPage> createState() => _SorovlarPageState();
}

class _SorovlarPageState extends State<SorovlarPage> {
  final List<Map<String, String>> items = [
    {"title": "“XONDAMIR HOLDING” MCHJ", "date": "10.10.2024 12:00"},
    {"title": "“Korzinka-savdo” MCHJ", "date": "10.10.2024 12:00"},
    {"title": "“XONDAMIR HOLDING” MCHJ", "date": "10.10.2024 12:00"},
    {"title": "“GMMOTORS-AVTO-777MOTORS” MCHJ", "date": "10.10.2024 12:00"},
    {"title": "“XONDAMIR HOLDING” MCHJ", "date": "10.10.2024 12:00"},
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
                  builder: (context) => DetailScreen(),
                ),
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
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
                        color: const Color(0xffFFFBFA),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffFEE4E2))),
                    child: Center(
                      child: SvgPicture.asset('assets/images/asterisk.svg'),
                    ),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Text(
                    items[index]["date"]!,
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
