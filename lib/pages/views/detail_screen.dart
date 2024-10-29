import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/pages/views/succsess.dart';
import 'package:muhtasham/utils/colors.dart';

// ignore: use_key_in_widget_constructors
class DetailScreen extends StatefulWidget {
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<Map<String, String>> productList = [
    {
      "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
      "quantity": "20 dona",
      "date": "18.02.2023"
    },
    {
      "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
      "quantity": "20 dona",
      "date": "18.02.2023"
    },
    {
      "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
      "quantity": "20 dona",
      "date": "18.02.2023"
    },
    {
      "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
      "quantity": "20 dona",
      "date": "18.02.2023"
    },
    // You can add more items here if needed
  ];

  String title = "UZS";

  String uzs = "UZS";

  String usd = "USD";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        title: Text(
          "“XOVANDAMIR HOLDING” MCHJ",
          style: GoogleFonts.onest(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xffEAECF0), width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productList[index]["name"]!,
                            style: GoogleFonts.onest(
                                fontWeight: FontWeight.w500, fontSize: 14),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                productList[index]["quantity"]!,
                                style: GoogleFonts.onest(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                              Text(
                                productList[index]["date"]!,
                                style: GoogleFonts.onest(
                                    fontWeight: FontWeight.w400, fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  height: 44,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      suffixText: title,
                                      suffixStyle: GoogleFonts.onest(
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff667085),
                                          fontSize: 14),
                                      hintText: "Narx kiriting",
                                      hintStyle: GoogleFonts.onest(
                                          color: const Color(0xffD0D5DD),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1,
                                          color: Color(0xffEAECF0),
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            width: 1, color: Color(0xffE5E7EB)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: blue,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 44,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        title,
                                        style: GoogleFonts.onest(
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xff344054),
                                            fontSize: 14),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      PopupMenuButton(
                                        onSelected: (value) {
                                          setState(() {
                                            title = value;
                                          });
                                        },
                                        color: white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        icon: SvgPicture.asset(
                                            "assets/images/chevron-down.svg"),
                                        itemBuilder: (context) {
                                          return [
                                            PopupMenuItem(
                                              value: uzs,
                                              child: Text(
                                                uzs,
                                                style: GoogleFonts.onest(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              ),
                                            ),
                                            PopupMenuItem(
                                              value: usd,
                                              child: Text(
                                                usd,
                                                style: GoogleFonts.onest(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ];
                                        },
                                      ),
                                    ],
                                  ),
                                ),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Succsess(),
                    ),
                  );
                  // Handle button action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  "Tasdiqlash",
                  style: GoogleFonts.onest(
                      fontWeight: FontWeight.w600, fontSize: 18, color: white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
