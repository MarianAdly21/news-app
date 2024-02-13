import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categores = const [
    CategoryModel(image: 'assets/business.webp', categoryName: 'Business'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/healthy.jpg', categoryName: 'Healthy'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'General')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categores.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categores[index]);
        },
      ),
    );
  }
}
