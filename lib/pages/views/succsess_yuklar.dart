

import 'package:muhtasham/utils/important.dart';



class SuccsessYuklar extends StatefulWidget {
  const SuccsessYuklar({super.key});

  @override
  State<SuccsessYuklar> createState() => _SuccsessYuklarState();
}

class _SuccsessYuklarState extends State<SuccsessYuklar> {
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
                  Column(
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Yuk muvaffaqiyatli yuklandi",
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: const Color(0xff101828)),
                      ),
                      Text(
                        "BU-00023 buyurtma yuklandi!",
                        style: GoogleFonts.onest(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff667085),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShowYuklar(),
                      ),
                      (route) => false,
                    );
                  }, // Disable if running
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD0D5DD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    "Asosiy sahifa",
                    style: GoogleFonts.onest(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
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
                    "Buyurtmalarga qaytish",
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
