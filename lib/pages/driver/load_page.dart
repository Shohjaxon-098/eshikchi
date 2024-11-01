
import 'package:muhtasham/utils/important.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  var _currentIndex = 0;

  final List<Widget> _titles = [
    Text(
      'Yuklar',
      style: GoogleFonts.onest(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    Text(
      'Jarayondagi yuklar',
      style: GoogleFonts.onest(fontSize: 16, fontWeight: FontWeight.w600),
    ),
    Text(
      'Tarix',
      style: GoogleFonts.onest(fontSize: 16, fontWeight: FontWeight.w600),
    ),
  ];
  final List<Widget> _pages = [
    Yuklar(),
    JarayondagiYuklar(),
    TarixPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _selectedValue = 1;
  List<String> options = ["O‘zbek", "Русский"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        leading: PopupMenuButton<String>(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: white,
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Container(
                        height: MediaQuery.of(context).size.width / 1.5,
                        margin: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tilni tanlash",
                              style: GoogleFonts.onest(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 1;
                                });
                              },
                              child: Container(
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 14),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: _selectedValue == 0
                                          ? const Color(0xffE5E7EB)
                                          : const Color(0xff0063FF),
                                    ),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/uzbekistan.svg",
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          options[0],
                                          style: GoogleFonts.onest(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Radio<int>(
                                      value: 1,
                                      groupValue: _selectedValue,
                                      onChanged: (int? value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            // Radio button 2
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedValue = 2;
                                });
                              },
                              child: Container(
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 14),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: _selectedValue == 1
                                          ? const Color(0xffE5E7EB)
                                          : const Color(0xff0063FF),
                                    ),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/russia.svg",
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          options[1],
                                          style: GoogleFonts.onest(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Radio<int>(
                                      value: 2,
                                      groupValue: _selectedValue,
                                      onChanged: (int? value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                  ),
                                  child: Text(
                                    "Saqlash",
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
                      );
                    },
                  );
                },
                value: 'til',
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/translate.svg",
                      fit: BoxFit.none,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Tilni o’zgartirish',
                      style: GoogleFonts.onest(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                    (route) => false,
                  );
                },
                value: 'user',
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/users.svg",
                      fit: BoxFit.none,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Ta’minotchi',
                      style: GoogleFonts.onest(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                onTap: () {},
                value: "truck",
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/images/truck.svg",
                      fit: BoxFit.none,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Haydovchi',
                      style: GoogleFonts.onest(
                          fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ];
          },
          icon: SvgPicture.asset(
            "assets/images/settings.svg",
            fit: BoxFit.none,
          ),
          onSelected: (value) {},
        ),
        backgroundColor: white,
        centerTitle: true,
        elevation: 0,
        title: _titles[_currentIndex],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/box2.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/box1.svg",
              width: 30,
              height: 30,
            ),
            label: 'Yuklar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/images/truck1.svg"),
            activeIcon: SvgPicture.asset(
              "assets/images/truck2.svg",
              width: 30,
              height: 30,
            ),
            label: 'Jarayondagi yuklar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/tarix2.svg",
              width: 30,
              height: 30,
            ),
            activeIcon: SvgPicture.asset(
              "assets/images/tarix1.svg",
            ),
            label: 'Tarix',
          ),
        ],
        selectedItemColor: blue,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
