import 'package:muhtasham/utils/important.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5FAFF),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo.svg',
                    ),
                    SvgPicture.asset(
                      'assets/images/bigText.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 72.09),
            child: Column(
              children: [
                Text(
                  "Salom!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hurmatli ta’minotchi, siz bilan hamkorligimiz bardavom bo’lsin!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
          Stack(
            alignment: const Alignment(0, 0.3),
            children: [
              SvgPicture.asset(
                'assets/images/Union.svg',
              ),
              SizedBox(
                width: 84,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/arrow-right.svg",
                    fit: BoxFit.none,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
