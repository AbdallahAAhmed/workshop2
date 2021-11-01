import 'package:flutter/material.dart';
import 'package:workshop2/constraints.dart';
import 'package:workshop2/dummy_attraction_list.dart';
import 'package:workshop2/models/attraction_model.dart';
import 'package:workshop2/widgets/attraction_card.dart';
import 'package:workshop2/widgets/bottom_bar.dart';

class ListPage extends StatelessWidget {
  static const String routeName = '/list_page';
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainThemeColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Icon(Icons.pool, color: Colors.white),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];
                    return AttractionCard(attraction: attr);
                  },
                ),
              ),
              const BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
