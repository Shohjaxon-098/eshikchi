import 'package:muhtasham/utils/important.dart';

class ShowJarayondagi extends StatefulWidget {
  const ShowJarayondagi({super.key});

  @override
  State<ShowJarayondagi> createState() => _ShowJarayondagiState();
}

class _ShowJarayondagiState extends State<ShowJarayondagi> {
  final List<Map<String, String>> items = [
    {
      "title": "BU-00023",
      "location": "Navoiy vil. Karmana tumani I.Karimov ko`chasi"
    },
    {
      "title": "BU-00023",
      "location": "Navoiy vil. Karmana tumani I.Karimov ko`chasi"
    },
    {
      "title": "BU-00023",
      "location": "Navoiy vil. Karmana tumani I.Karimov ko`chasi"
    },
  ];
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Izoh',
                style: GoogleFonts.onest(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Nib tellus molestie nunc non blandit massa enim. Facilisis magna etiam tempor orci eu lobortis elem. Nec ullamcorper sit amet risus nullam eget.',
                style: GoogleFonts.onest(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
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
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              _showBottomSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset("assets/images/message.svg"),
            ),
          ),
        ],
        backgroundColor: white,
        title: Text(
          "P-1253",
          style: GoogleFonts.onest(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: const Duration(milliseconds: 300),
                  type: PageTransitionType.rightToLeftWithFade,
                  child: const JarayondagiMalumotlar(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 4),
              child: Card(
                color: white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xffEAECF0),
                  ),
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
                        border: Border.all(color: const Color(0xffD1FADF))),
                    child: Center(
                        child: SvgPicture.asset(
                            'assets/images/shopping-green.svg')),
                  ),
                  title: Text(
                    overflow: TextOverflow.ellipsis,
                    items[index]["title"]!,
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  subtitle: Text(
                    overflow: TextOverflow.ellipsis,
                    "${items[index]["location"]}",
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w400,
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
