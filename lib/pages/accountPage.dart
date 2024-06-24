import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/pages/login.dart';
import 'package:travel/widgets/bottomNavBar.dart';

class account extends StatelessWidget {
  account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Stack(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/images/assets/jennie.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kim",
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Jennie",
                              style: GoogleFonts.poppins(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Good Morning!",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: 340,
                        height: 298,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(158, 158, 158, 0.4),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Settings and activity",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset(
                                      "lib/images/Icon/Account.svg",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                  Text("My Profile"),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.settings),
                                  ),
                                  Text("My Profile"),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.favorite_outline),
                                  ),
                                  Text("Liked Content"),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(Icons.change_circle_outlined),
                                  ),
                                  Text("Language"),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      Container(
                        width: 340,
                        height: 178,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(158, 158, 158, 0.4),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text("Login and Info",
                                    style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    "Help",
                                    style:
                                        GoogleFonts.poppins(color: Colors.blue),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.logout_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()),
                                      );
                                    },
                                    child: Text(
                                      "Log Out",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 3),
    );
  }
}
