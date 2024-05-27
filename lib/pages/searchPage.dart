import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/bottomNavBar.dart';
import 'package:travel/widgets/search/categorySearch.dart';
import 'package:travel/widgets/search/historySearch.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Color(0xffCCCED3),
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 40,
                              width: 42,
                              decoration: BoxDecoration(
                                color: Color(0xffCCCED3),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 236, 235, 235)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xffC4C4C4),
                            ),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black.withOpacity(0.5),
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  HistorySearch(),
                  CategorySearch(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 1),
    );
  }
}
