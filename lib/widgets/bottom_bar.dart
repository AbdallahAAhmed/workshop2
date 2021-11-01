import 'package:flutter/material.dart';
import 'package:workshop2/constraints.dart';
import 'package:workshop2/dummy_bottom_bar_items.dart';
import 'package:workshop2/models/bottom_bar_item_model.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {

  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, right: 20, left: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                for (var element in barItems) {
                  element.isSelected = barItem == element;
                }
              });
            },
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                    color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
