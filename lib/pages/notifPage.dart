import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/bottomNavBar.dart';

class notif extends StatelessWidget {
  const notif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset("lib/images/assets/notifbold.svg"),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Notifications",
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Unread",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: const AssetImage(
                                      "lib/images/assets/NusaPenida.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: Text(
                                "  Have you ever go to Nusa Penida?",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Let's check it out!",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Color(0xff2C4B6C),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff2C4B6C),
                                          decorationThickness: 2,
                                        ),
                                      )),
                                  Text(
                                    "3h",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 80,
                                height: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: const AssetImage(
                                            "lib/images/assets/NusaPenida.jpg"),
                                        fit: BoxFit.cover)),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: const AssetImage(
                                              "lib/images/assets/NusaPenida.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "Oh my God! Look at this magic!",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Most beautiful place in Indonesia",
                                        style:
                                            GoogleFonts.poppins(fontSize: 12),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "1d",
                                          style: GoogleFonts.poppins(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        Text(
                          "Already",
                          style: GoogleFonts.poppins(
                              color: Color.fromARGB(255, 60, 94, 130),
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          " Read",
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(60, 94, 130, 0.500),
                                  shape: BoxShape.circle),
                              child: Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: SvgPicture.asset(
                                  "lib/images/assets/discon.svg",
                                  width: 15,
                                  height: 15,
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 5),
                                child: Text(
                                  "   Hi Jennie! We have special disc...",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Check it out!",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Color(0xff2C4B6C),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff2C4B6C),
                                          decorationThickness: 2,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "1w",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(60, 94, 130, 0.500),
                                  shape: BoxShape.circle),
                              child: Container(
                                alignment: Alignment.center,
                                width: 50,
                                height: 50,
                                child: SvgPicture.asset(
                                  "lib/images/assets/signup.svg",
                                  width: 15,
                                  height: 15,
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 5),
                                child: Text(
                                  "   Hi Jennie! Welcome to the journey.",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Sign up successfully",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Color(0xff2C4B6C),
                                          fontWeight: FontWeight.w600,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Color(0xff2C4B6C),
                                          decorationThickness: 2,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "3w",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Navbar(selectedItem: 2),
    );
  }
}
