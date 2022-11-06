import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 150.0, 20),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Mr...',
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
                        color: Colors.white,
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
                    color: Colors.greenAccent,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.greenAccent,
                  iconDisabledColor: Colors.greenAccent,
                  buttonHeight: 50,
                  buttonWidth: 120,
                  buttonPadding: const EdgeInsets.only(left: 10, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.greenAccent,
                    ),
                    color: Colors.white,
                  ),
                  buttonElevation: 0,
                  itemHeight: 30,
                  itemPadding: const EdgeInsets.only(left: 10, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 120,

                  dropdownPadding: EdgeInsets.only(left: 30),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.greenAccent,
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

          ],
        );
      },
    );
  }

  void setState(Null Function() param0
      ) {}
}
