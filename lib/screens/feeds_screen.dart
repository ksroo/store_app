import 'package:catoloag/widget/feeds_products.dart';
import 'package:flutter/material.dart';


class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 240 / 290,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      children: List.generate(100, (index) {
        return FeedsProducts();
      }),
    ),
      //StaggeredGridView.countBuilder(
      //   crossAxisCount: 6,
      //   itemCount: 8,
      //   itemBuilder: (BuildContext context, int index) => FeedsScreen(),
      //   staggeredTileBuilder: (int index) =>
      //       new StaggeredTile.count(3, index.isEven ? 4 : 5),
      //   mainAxisSpacing: 8.0,
      //   crossAxisSpacing: 6.0,
      // ),
      // GridView.count(
      //   crossAxisCount: 2,
      //   childAspectRatio: 240 / 290,
      //   crossAxisSpacing: 8,
      //   mainAxisSpacing: 8,
      //   children: List.generate(
      //     100,
      //     (index) {
      //       return FeedsProducts();
      //     },
      //   ),
      // ),
    );
  }
}
