import 'package:flutter/material.dart';

class CategoryTripsScreen extends StatelessWidget {
  const CategoryTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Page travel")),
      ),
      body: Container(
        child: Center(child: Text("List Traveling")),
      ),
    );
  }
}
