
import 'package:muhtasham/utils/important.dart';

class TarixMalumot extends StatelessWidget {
  const TarixMalumot({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> productList = [
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "totall": "10 dona"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "totall": "15 dona"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "totall": "20 dona"
      },
      {
        "name": "Полиуретановая матовая эмаль BP101.XX2131231232",
        "totall": "30 dona"
      },
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                alignment: const Alignment(-0.96, -0.65),
                children: [
                  Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff0063FF),
                              Color(0xff004FCD),
                            ]),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48),
                          bottomRight: Radius.circular(48),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                border: const Border(),
                                color: const Color(0xffF5FAFF),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SvgPicture.asset(
                                "assets/images/shopping1.svg",
                                fit: BoxFit.none,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 12),
                              child: Text(
                                "BU-00023",
                                style: GoogleFonts.onest(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: white),
                              ),
                            ),
                            Text(
                              "Mijoz: “XOVANDAMIR HOLDING” MCHJ",
                              style: GoogleFonts.onest(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xffE6EFFF)),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Buyurtma manzili: Navoiy viloyati, Karmana tumani, Islom Karimov ko’chasi, 22-uy",
                              style: GoogleFonts.onest(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: const Color(0xffF6FEF9)),
                            ),
                          ],
                        ),
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Card(
                        color: white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xffEAECF0), width: 1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
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
                                children: [
                                  Text(
                                    "Miqdori:",
                                    style: GoogleFonts.onest(
                                        color: const Color(0xff667085),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    productList[index]["totall"]!,
                                    style: GoogleFonts.onest(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
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
            ),
          ],
        ),
      ),
    );
  }
}
