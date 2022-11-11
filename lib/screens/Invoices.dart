import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';


class Invoices extends StatefulWidget {
  const Invoices({Key? key}) : super(key: key);

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
        child: Text("Invoices")

    ),
    );
  }
}

