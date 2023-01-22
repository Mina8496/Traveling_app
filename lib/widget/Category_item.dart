import 'package:flutter/material.dart';
import 'package:frist_app/Screen/Category_trips_screen.dart';

class Category_item extends StatelessWidget {
  final String title;
  final String imageUrl;

  const Category_item(this.title, this.imageUrl);

  void SelectCategory(BuildContext ctv) {
    Navigator.of(ctv).push(
      MaterialPageRoute(
        builder: (c) => CategoryTripsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
          )
        ],
      ),
    );
  }
}
