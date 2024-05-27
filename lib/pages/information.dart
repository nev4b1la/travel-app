import 'package:flutter/material.dart';
import 'package:travel/pages/gallery.dart';
import 'package:travel/widgets/bottomNavBar.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                    child: Image.asset(
                      'lib/images/assets/NusaPenida.jpg',
                      height: 420,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 25,
                  child: Container(
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
                ),
                Positioned(
                  top: 220,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nusa',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Penida',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        'Klungkung, Bali',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xEEEEEE).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            SizedBox(width: 3),
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Nunc tellus nulla scelerisque volutpat integer congue nulla odio tellus. Sem integer nisl praesent dui est. Nulla elit semper ipsum libero nulla consequat. Sollicitudin dui scelerisque lectus venenatis cursus adipiscing. Maecenas mattis eget magna vel tempus.',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 13,
                    ),
                    // textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Documentation',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(18),
                            bottom: Radius.circular(18),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(18),
                            bottom: Radius.circular(18),
                          ),
                          child: Image.asset(
                            'lib/images/assets/NusaPenida.jpg',
                            height: 191,
                            width: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.3),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.play_arrow,
                                  color: Colors.white, size: 40),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gallery',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryPage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color(0xCCCED3).withOpacity(0.73),
                            ),
                            child: Text(
                              'See more',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 8,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'lib/images/assets/pict1.jpg',
                                height: 147,
                                width: 147,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'lib/images/assets/pict2.jpg',
                                height: 147,
                                width: 147,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 0),
    );
  }
}
