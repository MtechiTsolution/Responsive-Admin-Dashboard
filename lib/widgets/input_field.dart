import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final String content;

  InputField({required this.label, required this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80.0,
                child: Text(
                  "$label",
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3.7,
                color: Colors.blue[50],
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "$content",
                    fillColor: Colors.blue[50],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
