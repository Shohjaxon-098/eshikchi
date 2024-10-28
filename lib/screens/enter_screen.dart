import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/screens/otp_screen.dart';
import 'package:muhtasham/utils/colors.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({super.key});

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

TextEditingController phoneController = TextEditingController();

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 56, bottom: 48, right: 35, left: 31),
              child: Column(
                children: [
                  Text(
                    "Telefon raqam kiriting",
                    style: GoogleFonts.onest(
                        fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Mijozingizdan kelgan ma’lumotda  ko’rsatilgan telefon raqamingizni kiriting",
                    style: GoogleFonts.onest(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff667085),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 326,
              height: 56,
              child: Row(
                children: [
                  Container(
                    width: 91,
                    height: 56,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                      border: Border(
                        top: BorderSide(
                          color: Color(0xffE5E7EB),
                        ),
                        bottom: BorderSide(
                          color: Color(0xffE5E7EB),
                        ),
                        left: BorderSide(
                          color: Color(0xffE5E7EB),
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '+998',
                        style: GoogleFonts.onest(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      style: GoogleFonts.onest(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(12),
                        FilteringTextInputFormatter.digitsOnly,
                        TextInputFormatter.withFunction((oldValue, newValue) {
                          final text = newValue.text;
                          String formatted = '';
                          for (int i = 0; i < text.length; i++) {
                            if (i == 2 || i == 5 || i == 7) {
                              formatted += ' ';
                            }
                            formatted += text[i];
                          }
                          return TextEditingValue(
                            text: formatted,
                            selection: TextSelection.collapsed(
                                offset: formatted.length),
                          );
                        }),
                      ],
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            top: 12, bottom: 12, left: 12),
                        hintText: 'Raqamni kiriting',
                        hintStyle: GoogleFonts.onest(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffD0D5DD),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                          borderSide: BorderSide(color: Color(0xffE5E7EB)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                          borderSide: BorderSide(color: Color(0xffE5E7EB)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                          ),
                          borderSide: BorderSide(color: Color(0xffE5E7EB)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 361,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Davom etish",
                    style: GoogleFonts.onest(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
