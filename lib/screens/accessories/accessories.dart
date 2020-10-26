import 'package:flutter/material.dart';

class Accessories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
          child: Container(
            padding: EdgeInsets.only(left: 8, top: 20, right: 8, bottom: 20),
            width: MediaQuery.of(context).size.width * .90,
            height: MediaQuery.of(context).size.height * .80,
            child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[

                    _category(
                    'PERFORMANCE BRAKE KITS',
                    'https://b.cdnbrm.com/images/products/med/brakes/power-stop-z36-truck-and-tow-brake-kits-hero2.jpg',
                    context),
                    _category(
                    'BRAKE ROTORS',
                    'https://b.cdnbrm.com/images/products/med/brakes/ebc_sport_rotors_v2.jpg',
                    context),
                    _category(
                    'BRAKE PADS',
                    'https://b.cdnbrm.com/images/products/med/brakes/yellow-stuff-nobox.jpg',
                    context),
                    _category(
                    'CALIPER COVERS',
                    'https://b.cdnbrm.com/images/products/med/brakes/mgp-brake-caliper-covers-black.jpg',
                    context),
                    _category(
                    "PERFORMANCE BRAKE CALIPERS",
                    'https://b.cdnbrm.com/images/products/med/brakes/power_stop_performance_brake_calipers_hero.jpg',
                    context),
                    _category(
                    "BIG BRAKE KITS",
                    'https://b.cdnbrm.com/images/products/med/brakes/brembo-gt-big-brake-kit-pair-hero.jpg',
                    context),
                    _category(
                    "BRAKE SHOES",
                    'https://b.cdnbrm.com/images/products/med/brakes/power_stop_autospecialty_parking_brake_shoes__hero.jpg',
                    context),
                    _category(
                    "BRAKE DRUMS",
                    'https://b.cdnbrm.com/images/products/med/brakes/bendix-premium-brake-drum-hero-2.jpg',
                    context),
                    _category(
                    "WHEEL CYLINDER",
                    'https://b.cdnbrm.com/images/products/med/brakes/acdelco_wheel_cylinder_hero.jpg',
                    context),
                    _category(
                    "BRAKE FLUID",
                    'https://b.cdnbrm.com/images/products/med/motor_oil/ebc_brake_fluid_hero.jpg',
                    context),
              ],
            )),
          ),
        ),
      ),
    );
  }

  Widget _category(String name, String image, BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      elevation: 0,
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  color: Colors.blue,
                  height: 500,
                  child: _Sheet(),
                ));
      },
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .4,
            child: Image.network(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _Sheet() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'الفرع الاول',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16),
            child: Text(
              ' العنوان: عبد السلام عارف،المنصورة (قسم 2)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16),
            child: Text(
              'ساعات العمل : 10صباحا => 10مسائا',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16),
            child: Text(
              'الهاتف: 0216449',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'الفرع الثاني',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 8),
            child: Text(
              "العنوان : شارع 10 بور سعيد, اول المنصورة, الدقهلية",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16),
            child: Text(
              'ساعات العمل : 10صباحا => 10مسائا',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 16),
            child: Text(
              'الهاتف: 0216449',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
