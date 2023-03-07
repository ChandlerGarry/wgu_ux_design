import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const Image(
                width: double.infinity,
                image: AssetImage('assets/island_image.jpg'),
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 350.0, left: 80.0),
                    child: Column(
                      children: [
                        const Text(
                          'Discover the Magic of Taniti',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 42.0,
                          ),
                        ),
                        const Text(
                          'Escape to the blissful tranquility and unmatched luxury of taniti.',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          '- Explore pristine beaches, world-class resorts and unforgettable adventure today.',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              color: const Color.fromRGBO(23, 187, 187, 1.0),
                            ),
                            child: const Center(
                                child: Text(
                              'Learn More',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // NAVBAR
              const NavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
