import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/models/data.dart';

class Popular extends StatelessWidget {
  Popular({super.key});
  final List<Data> items = [
    Data(
      name: "Nusa Penida",
      place: "Bali",
      desc: "",
      image: "lib/images/Popular/p1.jpg",
      star: "",
    ),
    Data(
      name: "Rinjani",
      place: "NTB",
      desc: "",
      image: "lib/images/Popular/p2.jpg",
      star: "",
    ),
    Data(
      name: "Raja Ampat",
      place: "Papua",
      desc: "",
      image: "lib/images/Popular/p3.jpg",
      star: "",
    ),
    Data(
      name: "Bromo",
      place: "East Java",
      desc: "",
      image: "lib/images/Popular/p4.jpg",
      star: "",
    ),
    Data(
      name: "Labuan Bajo",
      place: "NTT",
      desc: "",
      image: "lib/images/Popular/p5.jpg",
      star: "",
    ),
    Data(
      name: "Ijen",
      place: "East Java",
      desc: "",
      image: "lib/images/Popular/p6.jpg",
      star: "",
    ),
    Data(
      name: "Komodo Park",
      place: "NTT",
      desc: "",
      image: "lib/images/Popular/p7.jpg",
      star: "",
    ),
    Data(
      name: "De Djawatan",
      place: "East Java",
      desc: "",
      image: "lib/images/Popular/p8.jpg",
      star: "",
    ),
    Data(
      name: "Tana Toraja",
      place: "North Sulawesi",
      desc: "",
      image: "lib/images/Popular/p9.jpg",
      star: "",
    ),
    Data(
      name: "Lempuyang",
      place: "Bali",
      desc: "",
      image: "lib/images/Popular/p10.jpg",
      star: "",
    ),
  ];

  final List<Color> colors = [
    Color(0xff2C4B6C),
    Color(0xff556E89),
    Color(0xff8294A7),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
    Color(0xff9BA9B9),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top 10 popular destination',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff161D23),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Weekly List',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2C4B6C),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            width: 400,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.6,
                mainAxisSpacing: 2,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final data = items[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(data.image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: -5,
                                left: -5,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors[index % colors.length],
                                  ),
                                  child: Center(
                                    child: Text(
                                      '#${index + 1}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.name,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  data.place,
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
