import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/models/kategori.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});
  final List<Jenis> items = [
    Jenis(
      name: "Beach",
      image: "lib/images/Categories/Beach.svg",
    ),
    Jenis(
      name: "Mountain",
      image: "lib/images/Categories/mount.svg",
    ),
    Jenis(
      name: "Forest",
      image: "lib/images/Categories/forest.svg",
    ),
    Jenis(
      name: "Religion",
      image: "lib/images/Categories/Religion.svg",
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
            'The most search destination type',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff161D23),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Today',
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff2C4B6C),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final jenis = items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
