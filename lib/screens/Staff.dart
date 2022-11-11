import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';



class Staff extends StatefulWidget {
  const Staff({Key? key}) : super(key: key);

  @override
  State<Staff> createState() => _StaffState();
}

class _StaffState extends State<Staff> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: Text("Staff")));
  }
}
