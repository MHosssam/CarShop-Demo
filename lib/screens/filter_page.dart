
import 'package:car_shop/screens/gas_station.dart';
import 'package:car_shop/screens/parking.dart';
import 'package:car_shop/screens/repair.dart';
import 'package:flutter/material.dart';

import 'accessories/accessories.dart';
import 'buy_car/buy_car.dart';
import 'buy_car/offer.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carty',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ) ,
          child: Container(
            padding: EdgeInsets.only(left:16.0 , top: 50 , right: 16 , bottom: 50),
            width: MediaQuery.of(context).size.width * .90,
            height: MediaQuery.of(context).size.height * .8,
            child: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width * .8,
                childAspectRatio: width / (height/2),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              children: <Widget>[
                _category('Buy Car', 'assets/images/CarLocation.png', () => BuyCar(), context),
                _category('Accessories', 'assets/images/shopping.png', () => Accessories(), context),
                _category('Gas Station', 'assets/images/station.png', () => GasStation(), context),
                _category('Cars Repair', 'assets/images/repair.png', () => Repaire(), context),
                _category("Parking", 'assets/images/parking.png', () => Parking(), context),
                _category("Car's Offer", 'assets/images/offer.png', () => Offer(), context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _category(String name, String image, Widget page() ,BuildContext context ) {
    return RaisedButton(
      color: Colors.blue,
      elevation: 0,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return page();
        }));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: 80,
            height: 110,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(70)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
