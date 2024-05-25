import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/bottomNavBar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Account Page",
            style: GoogleFonts.poppins(fontSize: 14),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 3),
    );
  }
}
