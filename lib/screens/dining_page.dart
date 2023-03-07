import 'package:flutter/material.dart';
import 'package:wgu_ux_design/widgets/title_header.dart';

import '../widgets/custom_tile.dart';
import '../widgets/navbar.dart';

class DiningPage extends StatelessWidget {
  const DiningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              // BACKGROUND IMAGE
              const Image(
                width: double.infinity,
                image: AssetImage('assets/tahiti_mountain1.jpg'),
                fit: BoxFit.fill,
              ),

              // NAVBAR
              const NavBar(),

              // DINING TITLE AND SUBTITLE
              Column(
                children: [
                  const TitleHeader(title: 'DINING'),
                  const SubtitleHeader(
                    subtitle:
                        'With ten restaurants, two grocery stores and one convenience store, you won\'t be going hungry!',
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Column(
                            children: const [
                              // First Restaurant
                              CustomTile(
                                assetString: 'assets/placeholder1.png',
                                restaurantName: 'Restaurant Name',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                              ),

                              // Second restaurant
                              CustomTile(
                                assetString: 'assets/placeholder1.png',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                restaurantName: 'Restaurant Name',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
