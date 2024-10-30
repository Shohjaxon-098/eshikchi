import 'dart:async';
import 'package:muhtasham/utils/important.dart';

class SuccsessBuyurtma extends StatefulWidget {
  const SuccsessBuyurtma({super.key});

  @override
  State<SuccsessBuyurtma> createState() => _SuccsessBuyurtmaState();
}

class _SuccsessBuyurtmaState extends State<SuccsessBuyurtma> {
  Timer? _timer;
  int _start = 5;
  bool _isRunning = false;
  void startTimer() {
    if (_isRunning) return; // Prevent starting a new timer if one is running
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        setState(() {
          _timer?.cancel();

          _isRunning = false;
        });
      }
    });
  }

  @override
  void initState() {
    startTimer();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SvgPicture.asset("assets/images/succsess.svg"),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33, right: 33, bottom: 4),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "“XOVANDAMIR HOLDING” MCHJ",
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: const Color(0xff101828)),
                  ),
                  Text(
                    "BU-00023 buyurtmasi tasdiqlandi!",
                    style: GoogleFonts.onest(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff667085),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Yukni olish sanasi: 10.01.2024",
                    style: GoogleFonts.onest(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff667085),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Umumiy summasi: 81 612 000 UZS",
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
            const Spacer(),
            _isRunning
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, // Disable if running
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffD0D5DD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadowColor: Colors.transparent,
                        ),
                        child: Text(
                          "Bekor qilish ($_start sek)",
                          style: GoogleFonts.onest(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Handle button action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    "Yopish",
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
    );
  }
}
