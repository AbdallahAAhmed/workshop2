import 'package:flutter/material.dart';
import 'package:workshop2/constraints.dart';
import 'package:workshop2/screens/list_screen.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.only(left: 20, bottom: 5, right: 5, top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Search Hotel',
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed(ListPage.routeName),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: mainThemeColor,
              ),
              child: const Icon(Icons.search, color: Colors.white, size: 15),
            ),
          ),
        ],
      ),
    );
  }
}
