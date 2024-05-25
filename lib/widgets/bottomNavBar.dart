import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/pages/accountPage.dart';
import 'package:travel/pages/homePage.dart';
import 'package:travel/pages/notifPage.dart';
import 'package:travel/pages/searchPage.dart';

class Navbar extends StatefulWidget {
  final int selectedItem;
  Navbar({Key? key, required this.selectedItem}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'lib/images/Icon/Home.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 0
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'lib/images/Icon/Search.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 1
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'lib/images/Icon/Notification.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 2
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'lib/images/Icon/Account.svg',
              width: 20,
              height: 20,
              color: widget.selectedItem == 3
                  ? Color(0xff2C4B6C)
                  : Color(0xff95A6B9),
            ),
          ),
          label: '',
        ),
      ],
      selectedItemColor: Color(0xff2C4B6C),
      unselectedItemColor: Color(0xff95A6B9),
      showUnselectedLabels: true,
      currentIndex: widget.selectedItem,
      onTap: (index) {
        _changeSelectedNavBar(context, index);
      },
    );
  }

  void _changeSelectedNavBar(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
        break;
      case 1:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
          (route) => false,
        );
        break;
      case 2:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => NotificationPage()),
          (route) => false,
        );
        break;
      case 3:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => AccountPage()),
          (route) => false,
        );
        break;
      default:
        break;
    }
  }
}
