import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/bottomNavBar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Notification Page",
            style: GoogleFonts.poppins(fontSize: 14),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(selectedItem: 2),
    );
  }
}
