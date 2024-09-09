import 'package:donut_app/utilities/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  // const DonutTab({super.key});
  List donutsOnSale = [
    //donutFlavour, donutPrice, donutColor, imageName

    ['Ice Cream', '36', Colors.blue, 'lib/images/donut.png'],
    ['Strawberry', '45', Colors.red, 'lib/images/donut1.png'],
    ['Grape Ape', '84', Colors.purple, 'lib/images/donut2.png'],
    ['Choco', '95', Colors.brown, 'lib/images/doughnut.png']
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: donutsOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.6),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            ImageName: donutsOnSale[index][3],
            donutColor: donutsOnSale[index][2],
          );
        });
  }
}
