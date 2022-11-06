import 'package:flutter/material.dart';
import 'dart:math';
import 'package:responsive_admin_dashboard/main.dart';

import '../constants/responsive.dart';
import '../screens/addnew.dart';
class TableCard extends StatefulWidget {
  const TableCard({Key? key}) : super(key: key);

  @override
  State<TableCard> createState() => _TableCardState();
}

class _TableCardState extends State<TableCard> {


//  get data => null;

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 5.0,
      child: Column(children: [
        Container(


          child: Row(
            children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton.icon(

                  style: TextButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical:
                      20 / (Responsive.isMobile(context) ? 3 : 1),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                          return new AddNew();
                        },
                        fullscreenDialog: true));
                  },
                  icon: Icon(Icons.mail,color: Colors.black54,),
                  label: Text(
                    "Bulk Email",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                  ),
                ),
              ),
            ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical:
                        20 / (Responsive.isMobile(context) ? 3 : 1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                            return new AddNew();
                          },
                          fullscreenDialog: true));
                    },
                    icon: Icon(Icons.sms,color: Colors.black54,),
                    label: Text(
                      "Bulk Sms",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                  child: Container()),
              Expanded(
                  flex: 3,
                  child: Container()),

              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16 * 1.5,
                        vertical:
                        16 / (Responsive.isMobile(context) ? 2 : 1),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute<Null>(
                          builder: (BuildContext context) {
                            return new AddNew();
                          },
                          fullscreenDialog: true));
                    },
                    icon: Icon(Icons.add),
                    label: Text(
                      "Add New",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          ],),
        ),
        Container(

          width: MediaQuery.of(context).size.width < 1300
              ? MediaQuery.of(context).size.width - 100
              : MediaQuery.of(context).size.width - 330,
          padding: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
          child: Table(
            columnWidths: <int, TableColumnWidth>{
              0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              4: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              5: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
            },
            children: [
              TableRow(decoration: BoxDecoration(), children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Role",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Mobile",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 1300
              ? MediaQuery.of(context).size.width - 100
              : MediaQuery.of(context).size.width - 330,
          // padding: EdgeInsets.all(32),
          child: Table(
              columnWidths: <int, TableColumnWidth>{
                0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                4: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                6: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              },
              children: List<TableRow>.generate(7, (i) {
                return TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 0.5, color: Colors.grey))),
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          // (i + 1).toString(),
                          'M.Abbas ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Male',
                          // title[i].author.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Senior Developer',
                         // data[i].language.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'shiftware@gmail.com',
                         // data[i].stars.toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      )
                    ]);
              })),
        ),
      ]),
    );
  }
}
