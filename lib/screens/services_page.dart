import 'package:flutter/material.dart';
import 'package:wgu_ux_design/widgets/custom_tile.dart';
import 'package:wgu_ux_design/widgets/title_header.dart';

import '../widgets/navbar.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // BACKGROUND IMAGE
                const Image(
                  width: double.infinity,
                  image: AssetImage('assets/tahiti_mountain2.jpg'),
                  fit: BoxFit.contain,
                ),

                // NAVBAR
                const NavBar(),

                // HEADER
                Column(
                  children: [
                    // TITLE AND SUBTITLE
                    const TitleHeader(title: 'SERVICES'),
                    const SubtitleHeader(
                      subtitle:
                          'Beautiful places to stay, fun things to do, great sights, and easy-to-use transportation - find it all below!',
                    ),

                    // BODY
                    Stack(
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Column(
                            children: const [
                              // LODGING TILES
                              ServicesSectionTitle(title: 'Lodging'),
                              CustomTile(
                                assetString: 'assets/placeholder3.png',
                                restaurantName: 'Restaurant Name',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                              ),
                              CustomTile(
                                assetString: 'assets/placeholder2.png',
                                restaurantName: 'Restaurant Name',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                              ),

                              // ENTERTAINMENT AND SIGHTSEEING TILES
                              ServicesSectionTitle(
                                title: 'Entertainment and Sightseeing',
                              ),
                              CustomTile(
                                assetString: 'assets/placeholder3.png',
                                restaurantName: 'Restaurant Name',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                              ),

                              ServicesSectionTitle(title: 'Transportation'),
                              CustomTile(
                                assetString: 'assets/placeholder3.png',
                                restaurantName: 'Restaurant Name',
                                description:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesSectionTitle extends StatelessWidget {
  final String title;
  const ServicesSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 20.0, 0, 20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: const TextStyle(
              color: Color.fromARGB(255, 81, 80, 80),
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
