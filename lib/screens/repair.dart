import 'package:flutter/material.dart';



class Repaire extends StatelessWidget {
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
              'مركز شرف',
              MainAxisAlignment.start,
              'العنوان: طريق المنصورة الدائرى بعد أكاديمية السلاب أمام بنزينة كالتكس، الطريق الدائرى، الدقهلية ',
              'الهاتف : 01220012009',
            ),
            _rowData(
              context,
              'مركز تاج',
              MainAxisAlignment.end,
              'العنوان: مدينه الزهراء امام المرور ',
              'الهاتف: 01005146854',
            ),
            _rowData(
              context,
              'شركه منصور ',
              MainAxisAlignment.start,
              'العنوان: 44 شارع عبد السلام عارف - طريق المجزر ',
              'الهاتف 2235720',
            ),
            _rowData(
              context,
              'مركز كينبو',
              MainAxisAlignment.end,
              'العنوان: ميت الكرما طريق المحلة المنصورة السريع اورجينال ',
              'الهاتف : 01010411124',
            ),
            _rowData(
              context,
              'شركه الغلبان',
              MainAxisAlignment.start,
              'العنوان:42 شارع عبد السلام عارف ',
              'الهاتف: 2240576 ',
            ),
            _rowData(
              context,
              'برقان',
              MainAxisAlignment.end,
              'العنوان: 65 شارع مكة المكرمة من شارع سعد زغلول - توريل الجديدة - ',
              'الهاتف: 2301208',
            ),
            _rowData(
              context,
              'مركز السبع',
              MainAxisAlignment.start,
              'العنوان: كيلو 5، ميت الكرما- طريق المحلة- المنصورة- طلخا- على الطريق السريع',
              'الهاتف: 16449',
            ),
            _rowData(
              context,
              'شركه نايل',
              MainAxisAlignment.end,
              'العنوان : شارع جيهان - بجوار مسجد الجامعة ',
              'الهاتف : 222411',
            ),
            _rowData(
              context,
              'مركز شينوفا',
              MainAxisAlignment.start,
              'العنوان : عيسى للسيارات ومراكز الخدمة - شارع محمد داود متفرع من شارع عبد السلام بجوار مره الدقهلية',
              'الهاتف : 2260059',
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
      String txtContent, String phone) {
    return Row(
      mainAxisAlignment: direction,
      children: <Widget>[
        InkWell(
          onTap: () {
            _showMyDialog(context, txt, txtContent,  phone);
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
      String phone) async {
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
                  " ساعات العمل :  8صباحا ل 8 مسائا ",
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
