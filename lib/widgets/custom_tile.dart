import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String assetString;
  final String restaurantName;
  final String description;
  const CustomTile(
      {super.key,
      required this.assetString,
      required this.restaurantName,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          // Restaurant Image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Image(
              image: AssetImage(assetString),
            ),
          ),

          // Column with Restaurant title and description.
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  restaurantName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 85, 82, 82),
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 85, 82, 82),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
