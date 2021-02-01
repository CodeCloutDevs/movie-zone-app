import 'package:flutter/material.dart';
import 'package:movie_zone/models/prices_model.dart';

class Prices extends StatelessWidget {
  final List<PricesModel> prices = [
    PricesModel(title: 'Normal', price: '48.00'),
    PricesModel(title: 'Kids (under 16 years)', price: '36.00'),
    PricesModel(title: 'Pensioners', price: '36.00'),
    PricesModel(title: 'Wednesdays 1/2 price', price: '24.00'),
    PricesModel(title: '3D Normal price', price: '58.00'),
    PricesModel(title: '3D Kids (under 16 years)', price: '46.00'),
    PricesModel(title: '3D Pensioners', price: '46.00'),
    PricesModel(title: '3D Wednesdays 1/2 price', price: '29.00'),
    PricesModel(title: '3D Glasses	', price: '14.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prices'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(prices[index].title),
              subtitle: Text(
                  'E ${prices[index].price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple
                  ),
              ),
            );
          },
          separatorBuilder: (_, __) => Divider(),
          itemCount: prices.length
      ),
    );
  }
}
