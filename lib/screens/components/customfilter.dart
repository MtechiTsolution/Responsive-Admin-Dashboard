import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'package:responsive_admin_dashboard/screens/components/profile_info.dart';
import 'package:responsive_admin_dashboard/screens/components/search_field.dart';
import 'package:provider/provider.dart';
import 'search_field.dart';
import 'dart:math' as math;
import 'package:dropdown_button2/dropdown_button2.dart';

class CutomFilter extends StatefulWidget {
  const CutomFilter({Key? key}) : super(key: key);

  @override
  State<CutomFilter> createState() => _CutomFilterState();
}

class _CutomFilterState extends State<CutomFilter> {

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    String? selectedValue;
    return  Container(
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Row(
          children: [
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
        child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 14,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Text(
                    'Mon..',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
          ),
          items: items
                .map((item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
          ))
                .toList(),
          value: selectedValue,
          onChanged: (value) {
              setState(() {
                selectedValue = value as String;
              });
          },

          icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 14,
              color: Colors.black,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.greenAccent,
          iconDisabledColor: Colors.greenAccent,
          buttonHeight: 50,
          buttonWidth: 80,
          buttonPadding: const EdgeInsets.only(left: 10, right: 14),
          buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black26,
              ),
              color: Colors.white,
          ),
          buttonElevation: 0,
          itemHeight: 30,
          itemPadding: const EdgeInsets.only(left: 10, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 120,

          dropdownPadding: EdgeInsets.only(left: 20),
          dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
          ),
          dropdownElevation: 8,
          dropdownFullScreen: true,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          offset: const Offset(-0, 0),
        ),
      ),
    ),
            ),
            Spacer(flex: 1,),
            Expanded(
              flex: 1,
              child: Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Icon(
                          Icons.do_not_disturb_on_total_silence_sharp,
                          size: 14,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Mon..',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    iconSize: 14,
                    iconEnabledColor: Colors.red,
                    iconDisabledColor: Colors.greenAccent,
                    buttonHeight: 50,
                    buttonWidth: 80,
                    buttonPadding: const EdgeInsets.only(left: 10, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                    buttonElevation: 0,
                    itemHeight: 30,
                    itemPadding: const EdgeInsets.only(left: 10, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 120,

                    dropdownPadding: EdgeInsets.only(left: 20),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    dropdownFullScreen: true,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(-0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Icon(
                          Icons.do_not_disturb_on_total_silence_sharp,
                          size: 14,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Mon..',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    iconSize: 14,
                    iconEnabledColor: Colors.greenAccent,
                    iconDisabledColor: Colors.greenAccent,
                    buttonHeight: 50,
                    buttonWidth: 80,
                    buttonPadding: const EdgeInsets.only(left: 10, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                    buttonElevation: 0,
                    itemHeight: 30,
                    itemPadding: const EdgeInsets.only(left: 10, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 120,

                    dropdownPadding: EdgeInsets.only(left: 20),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    dropdownFullScreen: true,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(-0, 0),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Container(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                          Icon(
                            Icons.do_not_disturb_on_total_silence_sharp,
                            size: 14,
                            color: Colors.blue,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Mon..',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },

                    iconSize: 14,
                    iconEnabledColor: Colors.blue,
                    iconDisabledColor: Colors.greenAccent,
                    buttonHeight: 50,
                    buttonWidth: 80,
                    buttonPadding: const EdgeInsets.only(left: 10, right: 14),
                    buttonDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                    buttonElevation: 0,
                    itemHeight: 30,
                    itemPadding: const EdgeInsets.only(left: 10, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 120,

                    dropdownPadding: EdgeInsets.only(left: 20),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    dropdownElevation: 8,
                    dropdownFullScreen: true,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 6,
                    scrollbarAlwaysShow: true,
                    offset: const Offset(-0, 0),
                  ),
                ),
              ),
            ),
            // Center(
            //   child: Expanded(
            //     flex: 3,
            //     child: Row(
            //       children: [
            //         SizedBox(width: 10,),
            //         Container(
            //           child: DropdownButtonHideUnderline(
            //             child: DropdownButton2(
            //               isExpanded: true,
            //               hint: Row(
            //                 children: const [
            //                   Icon(
            //                     Icons.color_lens,
            //                     size: 25,
            //                     color: Colors.black,
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                 ],
            //               ),
            //               items: items
            //                   .map((item) => DropdownMenuItem<String>(
            //                 value: item,
            //                 child: Text(
            //                   item,
            //                   style: const TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                 ),
            //               ))
            //                   .toList(),
            //               value: selectedValue,
            //               onChanged: (value) {
            //                 setState(() {
            //                   selectedValue = value as String;
            //                 });
            //               },
            //
            //               icon: Transform.rotate(
            //                 angle: 180 * math.pi / 350,
            //                 child: const Icon(
            //                   Icons.arrow_forward_ios,
            //                   size: 20,
            //                   color: Colors.greenAccent,
            //                 ),
            //               ),
            //               iconSize: 14,
            //               iconEnabledColor: Colors.greenAccent,
            //               iconDisabledColor: Colors.grey,
            //               buttonHeight: 50,
            //               buttonWidth: 90,
            //               buttonPadding: const EdgeInsets.only(left: 10, right: 14),
            //               buttonDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(10),
            //                 border: Border.all(
            //                   color: Colors.black26,
            //                 ),
            //                 color: Colors.white,
            //               ),
            //               buttonElevation: 1,
            //               itemHeight: 30,
            //               itemPadding: const EdgeInsets.only(left: 10, right: 14),
            //               dropdownMaxHeight: 200,
            //               dropdownWidth: 120,
            //
            //               dropdownPadding: EdgeInsets.only(left: 30),
            //               dropdownDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(14),
            //                 color: Colors.greenAccent,
            //               ),
            //               dropdownElevation: 8,
            //               dropdownFullScreen: true,
            //               scrollbarRadius: const Radius.circular(40),
            //               scrollbarThickness: 6,
            //               scrollbarAlwaysShow: true,
            //               offset: const Offset(-20, 0),
            //             ),
            //           ),
            //         ),
            //         SizedBox(width: 10,),
            //         Container(
            //           child: DropdownButtonHideUnderline(
            //             child: DropdownButton2(
            //               isExpanded: true,
            //               hint: Row(
            //                 children: const [
            //                   Icon(
            //                     Icons.color_lens,
            //                     size: 25,
            //                     color: Colors.black,
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                 ],
            //               ),
            //               items: items
            //                   .map((item) => DropdownMenuItem<String>(
            //                 value: item,
            //                 child: Text(
            //                   item,
            //                   style: const TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                 ),
            //               ))
            //                   .toList(),
            //               value: selectedValue,
            //               onChanged: (value) {
            //                 setState(() {
            //                   selectedValue = value as String;
            //                 });
            //               },
            //
            //               icon: Transform.rotate(
            //                 angle: 180 * math.pi / 350,
            //                 child: const Icon(
            //                   Icons.arrow_forward_ios,
            //                   size: 20,
            //                   color: Colors.greenAccent,
            //                 ),
            //               ),
            //               iconSize: 14,
            //               iconEnabledColor: Colors.greenAccent,
            //               iconDisabledColor: Colors.grey,
            //               buttonHeight: 50,
            //               buttonWidth: 90,
            //               buttonPadding: const EdgeInsets.only(left: 10, right: 14),
            //               buttonDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(10),
            //                 border: Border.all(
            //                   color: Colors.black26,
            //                 ),
            //                 color: Colors.white,
            //               ),
            //               buttonElevation: 1,
            //               itemHeight: 30,
            //               itemPadding: const EdgeInsets.only(left: 10, right: 14),
            //               dropdownMaxHeight: 200,
            //               dropdownWidth: 120,
            //
            //               dropdownPadding: EdgeInsets.only(left: 30),
            //               dropdownDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(14),
            //                 color: Colors.greenAccent,
            //               ),
            //               dropdownElevation: 8,
            //               dropdownFullScreen: true,
            //               scrollbarRadius: const Radius.circular(40),
            //               scrollbarThickness: 6,
            //               scrollbarAlwaysShow: true,
            //               offset: const Offset(-20, 0),
            //             ),
            //           ),
            //         ),
            //         SizedBox(width: 10,),
            //         Container(
            //           child: DropdownButtonHideUnderline(
            //             child: DropdownButton2(
            //               isExpanded: true,
            //               hint: Row(
            //                 children: const [
            //                   Icon(
            //                     Icons.color_lens,
            //                     size: 25,
            //                     color: Colors.black,
            //                   ),
            //                   SizedBox(
            //                     width: 10,
            //                   ),
            //                 ],
            //               ),
            //               items: items
            //                   .map((item) => DropdownMenuItem<String>(
            //                 value: item,
            //                 child: Text(
            //                   item,
            //                   style: const TextStyle(
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white,
            //                   ),
            //                   overflow: TextOverflow.ellipsis,
            //                 ),
            //               ))
            //                   .toList(),
            //               value: selectedValue,
            //               onChanged: (value) {
            //                 setState(() {
            //                   selectedValue = value as String;
            //                 });
            //               },
            //
            //               icon: Transform.rotate(
            //                 angle: 180 * math.pi / 350,
            //                 child: const Icon(
            //                   Icons.arrow_forward_ios,
            //                   size: 20,
            //                   color: Colors.greenAccent,
            //                 ),
            //               ),
            //               iconSize: 14,
            //               iconEnabledColor: Colors.greenAccent,
            //               iconDisabledColor: Colors.grey,
            //               buttonHeight: 50,
            //               buttonWidth: 90,
            //               buttonPadding: const EdgeInsets.only(left: 10, right: 14),
            //               buttonDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(10),
            //                 border: Border.all(
            //                   color: Colors.black26,
            //                 ),
            //                 color: Colors.white,
            //               ),
            //               buttonElevation: 1,
            //               itemHeight: 30,
            //               itemPadding: const EdgeInsets.only(left: 10, right: 14),
            //               dropdownMaxHeight: 200,
            //               dropdownWidth: 120,
            //
            //               dropdownPadding: EdgeInsets.only(left: 30),
            //               dropdownDecoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(14),
            //                 color: Colors.greenAccent,
            //               ),
            //               dropdownElevation: 8,
            //               dropdownFullScreen: true,
            //               scrollbarRadius: const Radius.circular(40),
            //               scrollbarThickness: 6,
            //               scrollbarAlwaysShow: true,
            //               offset: const Offset(-20, 0),
            //             ),
            //           ),
            //         ),
            //         SizedBox(width: 10,),
            //       ],
            //     ),
            //   ),
            // ),
            Spacer(flex: 1,),
            // if (!Responsive.isDesktop(context))
           // if (!Responsive.isDesktop(context))
            Expanded(
                  flex: 3,
                  child: SearchField()),
            // Expanded(
            //     child: Center(child: Text("Shiftware",
            //       style: TextStyle(fontWeight: FontWeight.bold),))),
         //   ProfileInfo(),
          ],
        ),
      ),
    );

  }
}
