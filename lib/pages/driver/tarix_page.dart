import 'package:muhtasham/utils/important.dart';

class TarixPage extends StatefulWidget {
  const TarixPage({super.key});

  @override
  State<TarixPage> createState() => _TarixPageState();
}

class _TarixPageState extends State<TarixPage> {
  final List<Map<String, String>> items = [
    {
      "title": "P-1253",
    },
    {
      "title": "P-1242",
    },
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
                      child: ShowTarix()));
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
                      color: const Color(0xffF6FEF9),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffD1FADF),
                      ),
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/images/box-green.svg'),
                    ),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Text(
                    "Yetkazilgan",
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
