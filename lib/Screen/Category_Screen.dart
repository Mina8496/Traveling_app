import 'package:flutter/material.dart';
import 'package:frist_app/widget/Category_item.dart';
import '../widget/app_data.dart';
import '../widget/Category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("tourist guide")),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((CategoryData) =>
            Category_item(CategoryData.title, CategoryData.imageUrl)).toList(),
      ),
    );
  }
}
