import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Menuu extends StatefulWidget {
  const Menuu({super.key});

  @override
  State<Menuu> createState() => _MenuuState();
}

class _MenuuState extends State<Menuu> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBar(
          controller: _tabController,
          labelColor: Color(0xff2C4B6C),
          labelStyle: GoogleFonts.nunito(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Color(0xff161D23),
          unselectedLabelStyle: GoogleFonts.nunito(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          isScrollable: true,
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xff2C4B6C),
                width: 2,
              ),
            ),
          ),
          tabs: [
            Tab(text: "Beach"),
            Tab(text: "Forest"),
            Tab(text: "Mountain"),
            Tab(text: "Waterfall"),
            Tab(text: "Park"),
            Tab(text: "Historical"),
            Tab(text: "Education"),
          ],
        ),
      ),
    );
  }
}
