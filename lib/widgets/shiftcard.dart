
import 'package:flutter/material.dart';
import '../constants/responsive.dart';
import '../screens/addnew.dart';
class ShiftCard extends StatelessWidget {
  const ShiftCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
         padding: const EdgeInsets.only(left: 10,right: 20),
         child: Row(
           children: [
             Container(
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     margin: EdgeInsets.all(20),
                     child: Text("SHIFT",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),
                   ),
                 ),
//                       child: Positioned(
//                           top: 80,
//                           left: 80,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(100),
// ,
//                           )

               ),
             ),
             Spacer(flex: 2,),
             Container(
               height: 40,
                 child: ElevatedButton.icon(
                   style: TextButton.styleFrom(
                     elevation: 10,
                     backgroundColor: Colors.greenAccent,
                     padding: EdgeInsets.symmetric(
                       horizontal: 10,
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
                   icon: Icon(Icons.add,color: Colors.white,),
                   label: Text(
                     "Add New",
                     style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                   ),
                 ),
),
           ],
         ),
       ),
        Container(
          height: 170,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person)),
                                            TextSpan(text: '  Client Name :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Muhammad Abbas"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person_pin)),
                                            TextSpan(text: '  Present Staff:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Rao Hamza Iqbal"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.timer)),
                                            TextSpan(text: '  Timing:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("           Mon-04-22 9'O Clock"),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.merge_type)),
                                                  TextSpan(text: '  Type:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("XYZ"),
                                            ),
                                          ],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.account_box)),
                                                  TextSpan(text: '  Status :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("Admin"),
                                            ),
                                          ],),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        Container(
          height: 170,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person)),
                                            TextSpan(text: '  Client Name :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Muhammad Abbas"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person_pin)),
                                            TextSpan(text: '  Present Staff:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Rao Hamza Iqbal"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.timer)),
                                            TextSpan(text: '  Timing:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("           Mon-04-22 9'O Clock"),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.merge_type)),
                                                  TextSpan(text: '  Type:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("XYZ"),
                                            ),
                                          ],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.account_box)),
                                                  TextSpan(text: '  Status :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("Admin"),
                                            ),
                                          ],),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        Container(
          height: 170,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person)),
                                            TextSpan(text: '  Client Name :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Muhammad Abbas"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person_pin)),
                                            TextSpan(text: '  Present Staff:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Rao Hamza Iqbal"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.timer)),
                                            TextSpan(text: '  Timing:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("           Mon-04-22 9'O Clock"),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.merge_type)),
                                                  TextSpan(text: '  Type:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("XYZ"),
                                            ),
                                          ],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.account_box)),
                                                  TextSpan(text: '  Status :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("Admin"),
                                            ),
                                          ],),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        Container(
          height: 170,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person)),
                                            TextSpan(text: '  Client Name :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Muhammad Abbas"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person_pin)),
                                            TextSpan(text: '  Present Staff:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Rao Hamza Iqbal"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.timer)),
                                            TextSpan(text: '  Timing:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("           Mon-04-22 9'O Clock"),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.merge_type)),
                                                  TextSpan(text: '  Type:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("XYZ"),
                                            ),
                                          ],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.account_box)),
                                                  TextSpan(text: '  Status :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("Admin"),
                                            ),
                                          ],),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        Container(
          height: 170,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person)),
                                            TextSpan(text: '  Client Name :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Muhammad Abbas"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.person_pin)),
                                            TextSpan(text: '  Present Staff:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("Rao Hamza Iqbal"),
                                      ),
                                    ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            WidgetSpan(child: Icon(Icons.timer)),
                                            TextSpan(text: '  Timing:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0,left: 4),
                                        child: Text("           Mon-04-22 9'O Clock"),
                                      ),
                                    ],),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(

                            margin: EdgeInsets.only(left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.merge_type)),
                                                  TextSpan(text: '  Type:',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("XYZ"),
                                            ),
                                          ],),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  WidgetSpan(child: Icon(Icons.account_box)),
                                                  TextSpan(text: '  Status :',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 16)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 20,),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,left: 4),
                                              child: Text("Admin"),
                                            ),
                                          ],),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),

      ],
    );

  }
}
