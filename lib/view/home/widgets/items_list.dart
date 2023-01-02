import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          5,
          (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 17),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      width: 150,
                      height: 140,
                      child: Stack(children: [
                        // Display the background image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset("assets/images/nike.png",
                              fit: BoxFit.fitHeight),
                        ),
                        // Display the price in the top right corner
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$${50}',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // Display the favorite icon button
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: const Icon(Icons.favorite_outline,
                                color: Colors.red),
                            onPressed: () {
                              // Add code to handle the favorite button press here
                            },
                          ),
                        ),
                        // Display the title at the bottom
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Shoes",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, right: 17),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 6,
                            spreadRadius: 3,
                          ),
                        ],
                      ),
                      width: 150,
                      height: 140,
                      child: Stack(children: [
                        // Display the background image
                        // Image.network(items[index].imageUrl),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset("assets/images/nike.png",
                              fit: BoxFit.fitWidth),
                        ), // Display the price in the top right corner
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '\$${50}',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // Display the favorite icon button
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: const Icon(Icons.favorite_outline,
                                color: Colors.red),
                            onPressed: () {
                              // Add code to handle the favorite button press here
                            },
                          ),
                        ),
                        // Display the title at the bottom
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Shoes",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ])),
    );
  }
}
