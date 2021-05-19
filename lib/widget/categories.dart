import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final int index;
  CategoryWidget(this.index);
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Phones',
      'categoryImagePath': 'assets/images/p1.jpeg',
    },
    {
      'categoryName': 'Clothes',
      'categoryImagePath': 'assets/images/clothes.jpeg',
    },
    {
      'categoryName': 'Shoes',
      'categoryImagePath': 'assets/images/shoes.jpeg',
    },
    {
      'categoryName': 'Beauty&Health',
      'categoryImagePath': 'assets/images/beauty&health.jpeg',
    },
    {
      'categoryName': 'Laptops',
      'categoryImagePath': 'assets/images/laptops.jpeg',
    },
    {
      'categoryName': 'Furniture',
      'categoryImagePath': 'assets/images/furniture.jpeg',
    },
    {
      'categoryName': 'Watches',
      'categoryImagePath': 'assets/images/watches.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(categories[index]['categoryImagePath']),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 150,
          height: 150,
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Theme.of(context).backgroundColor,
            child: Text(
              categories[index]['categoryName'],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Theme.of(context).textSelectionColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
