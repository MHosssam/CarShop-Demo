import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:car_shop/screens/model/car_data.dart';

import 'car_details.dart';

class BuyCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carty',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: new BoxDecoration(
                  color: Colors.blue,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  )),
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              height: MediaQuery.of(context).size.height * .90,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  _details(() => CarDetails(CarData(
                    'assets/images/che.jpg',
                    'Chevrolet Optra 2021 automatic',
                    'assets/images/detailes.png',
                    'the price 198,200 pound',
                  )), 'assets/images/che.jpg', 'Chevrolet Optra 2021 automatic' ,context),
                  _details(() => CarDetails(CarData(
                    'assets/images/kia.jpg',
                    'Kia Pegas 2020 Automatic',
                    'assets/images/kiadd.png',
                    ' the price 239,900 pound',
                  )), 'assets/images/kia.jpg', 'Kia Pegas 2020 Automatic', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/pe.jpg',
                    'Peugeot 301 2021 automatic',
                    'assets/images/ped.png',
                    ' the price 226,000 pound',
                  )), 'assets/images/pe.jpg', 'Peugeot 301 2021 automatic', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/scoda.png',
                    'Skoda Scala 2021 automatic',
                    'assets/images/sco.png',
                    ' the price 355,000 pound',
                  )), 'assets/images/scoda.png', 'Skoda Scala 2021 automatic', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/hun.png',
                    'Ford EcoSport 2020 Automatic',
                    'assets/images/hunn.png',
                    ' the price 325,000 pound',
                  )), 'assets/images/hun.png', 'Ford EcoSport 2020 automatic', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/hunda.png',
                    'Honda Civic 2020 Automatic VTI',
                    'assets/images/hunday.png',
                    ' the price 445,000 pound',
                  )), 'assets/images/hunda.png', 'Honda Civic 2020 Automatic VTI', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/jeeep.jpg',
                    'Jeep Grand Cherokee 2020 Automatic',
                    'assets/images/jeep.png',
                    ' the price 1,100,000 pound',
                  )), 'assets/images/jeeep.jpg', 'Jeep Grand Cherokee 2020 automatic', context),
                  _details(() => CarDetails(CarData(
                    'assets/images/fiat.jpg',
                    'Fiat Tipo 2021 Manual Pack1',
                    'assets/images/feat.png',
                    ' the price 191,900 pound',
                  )), 'assets/images/fiat.jpg', 'Fiat Tipo 2021 Manual Pack1', context),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _details( Widget dataCar() , String image , String title , BuildContext context ){
    return Container(
      width: 300.0,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return dataCar();
              }));
        },
        elevation: 0,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 23),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
