import 'package:flutter/material.dart';

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

class CatalogModel {
  static final items = [
    Item(
      1,
      "maruti suziki",
      'Mileage: Up to 23.76 kmpl\n'
          'Engine displacement:Up to 1197cc\n'
          'Body type: Hatchback\n'
          'Seating capacity: 5\n'
          'Fuel type: Petrol\n',
      573000,
      'Colors.brown',
      'https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/maruti-swift-hybrid.jpg',
    ),
    // Item(
    //   2,
    //   " Maruti Baleno",
    //   'Mileage: Up to 23.87kmpl'
    //       'Engine displacement: Up to 1197cc'
    //       'Body type: Hatchback'
    //       'Seating capacity: 5'
    //       'Fuel type: Petrol'
    //       'Ex-showroom price: Starts from Rs.5.90 lakhs',
    //   590000,
    //   'Colors.brown',
    //   'https://www.godigit.com/content/dam/godigit/directportal/en/contenthm/maruti-baleno.jpg',
    // ),
    // Item(
    //   3,
    //   "Hyundai i20",
    //   'Mileage: Up to 20.28 kmpl'
    //       'Engine displacement: Up to 998cc'
    //       'Body type: Hatchback'
    //       'Seating capacity: 5'
    //       'Fuel type: Petrol'
    //       'Ex-showroom price: Starts from Rs.6.79 lakhs',
    //   6,
    //   'Colors.brown',
    //   'godigit.com/content/dam/godigit/directportal/en/contenthm/hyundai-elite-i20.jpg',
    // ),
  ];
}
