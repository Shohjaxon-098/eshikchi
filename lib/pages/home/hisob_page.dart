import 'package:intl/intl.dart';
import 'package:muhtasham/utils/important.dart';

class HisobPage extends StatefulWidget {
  const HisobPage({super.key});

  @override
  State<HisobPage> createState() => _HisobPageState();
}

class _HisobPageState extends State<HisobPage> {
  DateTime? _startDate;
  DateTime? _endDate;
  Future<void> _selectDateRange(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
    );

    // Check if picked is not null before setting state
    if (picked != null) {
      setState(() {
        _startDate = picked.start;
        _endDate = picked.end;
      });
    }
  }

  void _showDateRangePickerBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: white,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Akt-sverka',
                  style: GoogleFonts.onest(
                      fontSize: 16, fontWeight: FontWeight.w600)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _selectDateRange(context),
                    child: Row(
                      children: [
                        Card(
                          color: white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffEAECF0), width: 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _startDate == null || _endDate == null
                                      ? "10.10.2024"
                                      : "${DateFormat('dd.MM.yyyy').format(_startDate!)}",
                                  style: GoogleFonts.onest(
                                      color: const Color(0xff101828),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset('assets/images/calendar.svg'),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          " - ",
                          style: GoogleFonts.onest(
                              color: const Color(0xff101828),
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Card(
                          color: white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xffEAECF0), width: 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _startDate == null || _endDate == null
                                      ? "10.10.2024"
                                      : "${DateFormat('dd.MM.yyyy').format(_endDate!)}",
                                  style: GoogleFonts.onest(
                                      color: const Color(0xff101828),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset('assets/images/calendar.svg'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
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
                      "Yuklab olish",
                      style: GoogleFonts.onest(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Handle button acti;on
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD0D5DD), // Background color
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
                        color: Color(0xff344054)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  final List<Map<String, String>> productList = [
    {
      "name": "“XOVANDAMIR HOLDING” MCHJ",
      "number": "23123453222",
    },
    {
      "name": "“XOVANDAMIR HOLDING” MCHJ",
      "number": "23123453222",
    },
    {
      "name": "“XOVANDAMIR HOLDING” MCHJ",
      "number": "23123453222",
    },

    // You can add more items here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12, top: 6),
                  child: Card(
                    color: white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(color: Color(0xffEAECF0), width: 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                    color: const Color(0xffF6FEF9),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: const Color(0xffD1FADF))),
                                child: Center(
                                  child: SvgPicture.asset(
                                      'assets/images/home.svg'),
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productList[index]["name"]!,
                                    style: GoogleFonts.onest(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    productList[index]["number"]!,
                                    style: GoogleFonts.onest(
                                        color: const Color(0xff667085),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Color(0xffEAECF0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        duration: Duration(milliseconds: 300),
                                        type: PageTransitionType
                                            .rightToLeftWithFade,
                                        child: BuyurtmalarTarixi()));
                              },
                              child: Card(
                                color: white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Color(0xffEAECF0), width: 1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/buyurtma-tarix.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Buyurtmalar tarixi",
                                        style: GoogleFonts.onest(
                                            color: const Color(0xff344054),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () =>
                                  _showDateRangePickerBottomSheet(context),
                              child: Card(
                                color: white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Color(0xffEAECF0), width: 1),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/akt-sverka.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Akt-sverka",
                                        style: GoogleFonts.onest(
                                            color: const Color(0xff344054),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
