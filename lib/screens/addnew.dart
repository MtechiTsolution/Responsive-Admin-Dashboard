import 'package:flutter/material.dart';
import '../widgets/gender.dart';
import '../widgets/input_field.dart';
import 'package:responsive_admin_dashboard/main.dart';
import 'package:animations/animations.dart';
import 'package:responsive_admin_dashboard/main.dart';
import '../widgets/membership.dart';

class AddNew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
      'Item5',
      'Item6',
      'Item7',
      'Item8',
    ];
    String? selectedValue;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: EdgeInsets.only(top: 60.0, bottom: 40.0, left: 220.0, right: 120.0),
        child: Card(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(40.0)),
          elevation: 5.0,
            child: Container(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Gender(),
                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Name",
                        content: "Enter your Name..."
                    ),
                    SizedBox(height: 20.0),


                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Date of birth",
                        content: "01/02/1986"
                    ),


                    SizedBox(height: 20.0),


                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Email",
                        content: "Enter Email"
                    ),

                    SizedBox(height: 20.0),



                    InputField(
                        label: "Mobile",
                        content: "Enter your mobile Number"
                    ),


                    SizedBox(height: 20.0),

                    //InputField Widget from the widgets folder
                    InputField(
                        label: "Address",
                        content: "Enter your Address"
                    ),


                    //Membership Widget from the widgets folder
                    //   Membership(),

                    SizedBox(height: 40.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(width: 170.0,),
                        Container(
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text(
                                "Cancel",
                                style: TextStyle(
                                color: Colors.black
                            ),
                            ),
                             style: ElevatedButton.styleFrom(
                                 primary: Colors.greenAccent,
                                 padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                             ),
                          ),
                        ),

                        SizedBox(width: 20.0,),

                        ElevatedButton(
                          onPressed: (){
                            OpenContainer(
                              transitionType: ContainerTransitionType.fadeThrough,
                              closedColor: Theme.of(context).cardColor,
                              closedElevation: 0.0,
                              openElevation: 4.0,
                              transitionDuration: Duration(milliseconds: 1500),
                              openBuilder: (BuildContext context, VoidCallback _) => MyApp(),
                              closedBuilder: (BuildContext _, VoidCallback openContainer) {
                                return ListTile(
                                  leading: Icon(Icons.album),
                                  title: Text("ITEM NAME"),
                                );
                              },
                            );

                          },
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.black
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent,
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

            )
        ),
      ),
    );
  }
}
