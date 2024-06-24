import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/pages/homePage.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Register Complete!",
                        style: GoogleFonts.poppins(
                            fontSize: 24, fontWeight: FontWeight.w900),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "You successfully to create your account",
                            style: GoogleFonts.poppins(fontSize: 14),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(44, 75, 108, 0.350),
                              shape: BoxShape.circle),
                          child: Container(
                            alignment: Alignment.center,
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(44, 75, 108, 0.300),
                                shape: BoxShape.circle),
                            child: Container(
                              alignment: Alignment.center,
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          "lib/images/assets/registrasi.png"))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 20, right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    elevation: 20,
                    backgroundColor: Color(0xff2C4B6C),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Discover more",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
