import 'package:car_shop/screens/model/car_data.dart';
import 'package:flutter/material.dart';

import 'car_details.dart';




class Offer extends StatelessWidget {
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
        child: SingleChildScrollView(
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
                      'assets/images/kia.jpg',
                      'Kia Pegas 2020 Automatic',
                      'assets/images/kiadd.png',
                      ' the price 200,000 pound',
                    )), 'assets/images/kia.jpg', 'Kia Pegas 2020 Automatic', context),
                    _details(() => CarDetails(CarData(
                      'assets/images/pe.jpg',
                      'Peugeot 301 2021 automatic',
                      'assets/images/ped.png',
                      ' the price 186,000 pound',
                    )), 'assets/images/pe.jpg', 'Peugeot 301 2021 automatic', context),
                    _details(() => CarDetails(CarData(
                      'assets/images/scoda.png',
                      'Skoda Scala 2021 automatic',
                      'assets/images/sco.png',
                      ' the price 300,000 pound',
                    )), 'assets/images/scoda.png', 'Skoda Scala 2021 automatic', context),
                    _details(() => CarDetails(CarData(
                      'assets/images/hun.png',
                      'Ford EcoSport 2020 Automatic',
                      'assets/images/hunn.png',
                      ' the price 275,000 pound',
                    )), 'assets/images/hun.png', 'Ford EcoSport 2020 automatic', context),
                    _details(() => CarDetails(CarData(
                      'assets/images/hunda.png',
                      'Honda Civic 2020 Automatic VTI',
                      'assets/images/hunday.png',
                      ' the price 390,000 pound',
                    )), 'assets/images/hunda.png', 'Honda Civic 2020 Automatic VTI', context),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
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
            Stack(
              children: <Widget>[
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
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.local_offer,size: 50,color: Colors.redAccent.shade400,),
                ),
              ],
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
