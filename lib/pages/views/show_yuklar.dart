import 'package:muhtasham/utils/important.dart';

class ShowYuklar extends StatefulWidget {
  const ShowYuklar({super.key});

  @override
  State<ShowYuklar> createState() => _ShowYuklarState();
}

class _ShowYuklarState extends State<ShowYuklar> {
  bool get allOrdersLoaded =>
      items.every((item) => item['status'] == 'Yuklandi');

  void toggleOrderStatus(int index) {
    setState(() {
      items[index]['status'] =
          items[index]['status'] == '' ? 'Yuklandi' : 'Yuklandi';
    });
    saveOrdersStatus();
  }

  List<Map<String, dynamic>> items = [
    {'title': 'BU-00023', 'status': ''},
    {'title': 'BU-00024', 'status': ''},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadOrdersStatus();
  }

  Future<void> loadOrdersStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedData = prefs.getString('items');
    if (savedData != null) {
      List<dynamic> decodedData = json.decode(savedData);
      setState(() {
        items =
            decodedData.map((item) => Map<String, dynamic>.from(item)).toList();
      });
    }
  }

  // Save order statuses to local storage
  Future<void> saveOrdersStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String encodedData = json.encode(items);
    await prefs.setString('items', encodedData);
  }

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
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.leftToRightWithFade,
                child: const LoadPage(),
              ),
            );
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
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
                            color: const Color(0xffF5FAFF),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xffD1E9FF))),
                        child: Center(
                            child: SvgPicture.asset(
                                'assets/images/shopping1.svg')),
                      ),
                      title: Text(
                        overflow: TextOverflow.ellipsis,
                        items[index]["title"]!,
                        style: GoogleFonts.onest(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      subtitle: Text(
                        overflow: TextOverflow.ellipsis,
                        "${items[index]['status']!} ",
                        style: TextStyle(
                          color: items[index]['status'] == 'Yuklandi'
                              ? Colors.green
                              : Colors.red,
                        ),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YuklarMalumoti(),
                          ),
                        );
                        toggleOrderStatus(index);
                        if (result == 'accepted') {
                          setState(() {
                            items[index]['status'] = 'Yuklandi';
                          });
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: allOrdersLoaded
                      ? () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            PageTransition(
                              child: const YolgaChiqdim(),
                              type: PageTransitionType.fade,
                            ),
                            (route) => false,
                          );
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: allOrdersLoaded
                        ? Color(0xff0063FF)
                        : Colors.blue.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: Text(
                    "Yo’lga chiqdim",
                    style: GoogleFonts.onest(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
