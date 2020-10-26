import 'package:flutter/material.dart';


class Parking extends StatelessWidget {
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
              'جيهان',
              MainAxisAlignment.start,
              'العنوان: شارع جيهان جمب جزيره الورد',
            ),
            _rowData(
              context,
              'مول العرب',
              MainAxisAlignment.end,
              'العنوان:حي الجامعه امام بوابه القريه الاولمبيه',
            ),
            _rowData(
              context,
              'فتح الله',
              MainAxisAlignment.start,
              'العنوان: شارع الجمهوريه اسفل فتح الله ',
            ),
            _rowData(
              context,
              'جامعه المنصوره',
              MainAxisAlignment.end,
              'العنوان: داخل الجامعه وخاص بالحكومه ',
            ),
            _rowData(
              context,
              'وكاله المنصوره',
              MainAxisAlignment.start,
              'العنوان:قناه السويس اسفل وكاله المنصوره ',
            ),
            _rowData(
              context,
              'تقسيم طراطير',
              MainAxisAlignment.end,
              'العنوان: شارع قناه السويس امام التقسيم ',
            ),
            _rowData(
              context,
              'استاد المنصوره',
              MainAxisAlignment.start,
              'العنوان: امام الاستاد ',
            ),
            _rowData(
              context,
              'احمد ماهر',
              MainAxisAlignment.end,
              'العنوان : امام وكاله المنصوره ',
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
      String txtContent) {
    return Row(
      mainAxisAlignment: direction,
      children: <Widget>[
        InkWell(
          onTap: () {
            _showMyDialog(context, txt, txtContent,);
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

  Future<void> _showMyDialog(BuildContext context, String txt, String txtcontent,) async {
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
                  'ساعات العمل : مفتوع علي مدار 24 ساعه',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
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
