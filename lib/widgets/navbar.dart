import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      child: AppBar(
        elevation: 0,
        leading: const Text(
          'Taniti',
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
        actions: const [
          NavTextButton(navText: 'HOME', navToPage: '/home'),
          NavTextButton(navText: 'DINING', navToPage: '/dining'),
          NavTextButton(navText: 'SERVICES', navToPage: '/services'),
          NavTextButton(navText: 'FAQ', navToPage: '/faq'),
        ],
        backgroundColor: Colors.transparent,
      ),
    );
  }
}

class NavTextButton extends StatelessWidget {
  final String navText;
  final String navToPage;
  const NavTextButton(
      {super.key, required this.navText, required this.navToPage});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, navToPage);
        debugPrint('pushed!');
      },
      child: Text(
        navText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
