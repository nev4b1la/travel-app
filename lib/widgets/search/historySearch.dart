import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/models/kategori.dart';

class HistorySearch extends StatelessWidget {
  HistorySearch({super.key});
  final List<Jenis> items = [
    Jenis(
      name: "Tana Lot",
      image: "",
    ),
    Jenis(
      name: "Lempuyang",
      image: "",
    ),
    Jenis(
      name: "Lombok",
      image: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = items[index];
          return InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recently Search',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff161D23),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          data.name,
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff2C4B6C),
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(
                          CupertinoIcons.xmark,
                          color: Color(0xff2C4B6C),
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          );
        },
      ),
    );
  }
}
