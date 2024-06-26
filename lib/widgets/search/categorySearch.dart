import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/models/kategori.dart';

class CategorySearch extends StatelessWidget {
  CategorySearch({super.key});

  final List<Jenis> items = [
    Jenis(
      name: "Beach",
      image: "lib/images/Categories/Beach.svg",
    ),
    Jenis(
      name: "Park",
      image: "lib/images/Categories/park.svg",
    ),
    Jenis(
      name: "Mountain",
      image: "lib/images/Categories/mount.svg",
    ),
    Jenis(
      name: "Waterfall",
      image: "lib/images/Categories/Religion.svg",
    ),
    Jenis(
      name: "Historical",
      image: "lib/images/Categories/history.svg",
    ),
    Jenis(
      name: "Education",
      image: "lib/images/Categories/waterfall.svg",
    ),
    Jenis(
      name: "Religion",
      image: "lib/images/Categories/Religion.svg",
    ),
    Jenis(
      name: "Forest",
      image: "lib/images/Categories/forest.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Type of Destination',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff161D23),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: (150 / 120),
                ),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final jenis = items[index];
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff2C4B6C),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                jenis.image,
                                height: 25,
                                width: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            jenis.name,
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
