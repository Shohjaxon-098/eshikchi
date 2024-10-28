import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muhtasham/screens/home_screen.dart';
import 'package:muhtasham/utils/colors.dart';

// class Otp extends StatelessWidget {
//   const Otp({super.key, required this.otpController, required this.onChanged});
//   final void Function(String)? onChanged;
//   final TextEditingController otpController;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 40,
//       height: 40,
//       child: TextField(
//         controller: otpController,
//         keyboardType: TextInputType.number,
//         style: GoogleFonts.onest(
//             fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
//         textAlign: TextAlign.center,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//         ],
//         onChanged: onChanged,
//         showCursor: true,
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: ('●'),
//           hintStyle: TextStyle(
//             fontSize: 16,
//             color: Color(0xffD0D5DD),
//           ),
//         ),
//       ),
//     );
//   }
// }

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

final List<TextEditingController> _controllers =
    List.generate(6, (_) => TextEditingController());

class _OtpScreenState extends State<OtpScreen> {
  Timer? _timer;
  int _start = 60; // Countdown from 60 seconds
  bool _isRunning = false;
  void startTimer() {
    if (_isRunning) return; // Prevent starting a new timer if one is running
    _isRunning = true;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        setState(() {
          _timer?.cancel();
          _isRunning = false; // Timer finished, allow restarting
          _start = 60;
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < _controllers.length - 1) {
      FocusScope.of(context).nextFocus(); // Move to the next field
    } else if (value.length == 1 && index == _controllers.length - 1) {
      FocusScope.of(context).unfocus(); // Close the keyboard
      _navigateToNextPage(); // Navigate to the next page
    }
  }

  void _navigateToNextPage() {
    // Get the entered OTP
    String otp = _controllers.map((controller) => controller.text).join();
    // You can use the OTP for validation or send it to the next page.
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leadingWidth: 64,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            fit: BoxFit.none,
            "assets/images/arrow-left.svg",
          ),
        ),
        backgroundColor: white,
        toolbarHeight: 64,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(
            right: 61.82,
          ),
          child: Row(
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
                    "Kodni kiriting",
                    style: GoogleFonts.onest(
                        fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Kod +998 91 222 22 32 raqamiga yuborilgan",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Container(
                  width: 45,
                  child: TextField(
                    style: GoogleFonts.onest(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1, // Limit to one character
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "●",
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xffD0D5DD),
                      ),
                      counterText: '',
                    ),
                    onChanged: (value) => _onChanged(value, index),
                  ),
                );
              }),
            ),
            Spacer(),
            Text(
              _isRunning
                  ? "Agar kod yuborilmasa, yangi kodni\n $_start soniyadan so’ng so’rash mumkin"
                  : "Yangi kod olishingiz mumkin",
              style: GoogleFonts.onest(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xff667085),
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 12.0),
              child: SizedBox(
                width: 361,
                height: 60,
                child: ElevatedButton(
                  onPressed:
                      _isRunning ? null : startTimer, // Disable if running
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Yangi kod yuborish",
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
