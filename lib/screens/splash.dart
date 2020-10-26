import 'package:car_shop/screens/filter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100, bottom: 24),
                width: MediaQuery.of(context).size.width * .90,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/car.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, bottom: 60),
                child: Text(
                  'Get now your car and all   its accessories at  the cheapest price with the best quality, and also you can know the best offers and prices minute by minute',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FilterPage();
                  }));
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 20),
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8)),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
