
import 'package:muhtasham/utils/important.dart';

class YolgaChiqdim extends StatelessWidget {
  const YolgaChiqdim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SvgPicture.asset("assets/images/succsess.svg"),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48, left: 33, right: 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Buyurtmalar yetkazish uchun yo’lga chiqildi",
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: const Color(0xff101828)),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoadPage(),
                      ),
                      (route) => false,
                    );
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
                    "Asosiy sahifa",
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
