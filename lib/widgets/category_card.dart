import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(category.image), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(18),
      ),
      height: 90,
      width: 170,
      child: Center(
        child: Text(
          category.categoryName,
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
