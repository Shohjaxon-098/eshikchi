import 'package:muhtasham/utils/important.dart';

class Yuklar extends StatefulWidget {
  const Yuklar({super.key});

  @override
  State<Yuklar> createState() => _YuklarState();
}

class _YuklarState extends State<Yuklar> {
  final List<Map<String, String>> items = [
    {"title": "P-1253", "date": "15.10.2024 12:00"},
    {"title": "P-1242", "date": "23.10.2024 12:00"},
    {"title": "P-1294", "date": "30.10.2024 12:00"},
    {"title": "P-1392", "date": "04.11.2024 12:00"},
    {"title": "P-1314", "date": "10.12.2024 12:00"},
    {"title": "P-1344", "date": "20.12.2024 12:00"},
    {"title": "P-1324", "date": "18.12.2024 12:00"},
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
                  PageTransition(
                      duration: Duration(milliseconds: 300),
                      type: PageTransitionType.rightToLeftWithFade,
                      child: ShowYuklar()));
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 0.0),
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
                      border: Border.all(
                        color: const Color(0xffD1E9FF),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/images/box1.svg'),
                    ),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Text(
                    "Yukni olish sanasi: ${items[index]["date"]}",
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
