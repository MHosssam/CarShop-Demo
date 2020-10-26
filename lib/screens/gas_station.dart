import 'package:flutter/material.dart';

class GasStation extends StatelessWidget {
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
            _rowData(
              context,
              'Total',
              MainAxisAlignment.start,
              'العنوان: عبد السلام عارف،المنصورة (قسم 2)الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف : 0225225655',
            ),
            _rowData(
              context,
              'Wataniya',
              MainAxisAlignment.end,
              'العنوان: شارع الجيش،المنصورة (قسم 2)الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: لا يوجد',
            ),
            _rowData(
              context,
              'Esso',
              MainAxisAlignment.start,
              'العنوان: عبد السلام عارف اسفل كوبري السلام،المنصورة (قسم 2)الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: 02 25225655',
            ),
            _rowData(
              context,
              'Misr',
              MainAxisAlignment.end,
              'العنوان: عبد الثوره،المنصورة (قسم 2)الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: 02 25225655',
            ),
            _rowData(
              context,
              'GASTEC',
              MainAxisAlignment.start,
              'العنوان:الامام محمد عبده المنصورة (قسم 2) الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: لا يوجد ',
            ),
            _rowData(
              context,
              'Mobil',
              MainAxisAlignment.end,
              'العنوان: محمود شاهين،المنصورة (قسم2) الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: 01002520655',
            ),
            _rowData(
              context,
              'Mobil',
              MainAxisAlignment.start,
              'العنوان: عبد السلام عارف المنصورة الدقهليه ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: 01004725757',
            ),
            _rowData(
              context,
              'Gas Staion',
              MainAxisAlignment.end,
              'العنوان : المنصورة (قسم 2)، الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: لا يوجد',
            ),
            _rowData(
              context,
              'Gas',
              MainAxisAlignment.start,
              'العنوان : طريق عبدالسلام عارف اسفل كوبرى الدقهلية ',
              'ساعات العمل : مفتوع علي مدار 24 ساعه',
              'الهاتف: لا يوجد',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowData(BuildContext context, String txt, MainAxisAlignment direction,
      String txtContent, String time, String phone) {
    return Row(
      mainAxisAlignment: direction,
      children: <Widget>[
        InkWell(
          onTap: () {
            _showMyDialog(context, txt, txtContent, time, phone);
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _showMyDialog(BuildContext context, String txt, String txtcontent,
      String time, String phone) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(txt , style: TextStyle(color: Colors.blue),),
          content: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  txtcontent,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  time,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  phone,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
