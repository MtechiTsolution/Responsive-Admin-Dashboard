import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_dashboard/screens/Client.dart';
import 'package:responsive_admin_dashboard/screens/Invoices.dart';
import 'package:responsive_admin_dashboard/screens/Staff.dart';
import 'package:responsive_admin_dashboard/screens/addnew.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_list_tile.dart';
import '../../widgets/bottom_model_sheet.dart';
class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          Container(
            height: 130,
            color: Colors.white,
            padding: EdgeInsets.all(appPadding),
            child: Column(
              children: [
                Expanded(
                    child: Image.asset("assets/images/looogo.png")),
                Expanded(
                  child: Text("Shiftware",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                )
              ],
            ),

          ),
          Divider(
              color: grey,
              thickness: 0.2,
          ),
          SizedBox(height: 40,),
          DrawerListTile(

              title: 'Shift',
              svgSrc: 'assets/icons/sts.svg',
              tap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Alert Dialog Box"),
                    content: const Text("You have raised a Alert Dialog Box"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();

                        },
                        child: Container(
                          color: Colors.green,
                          padding: const EdgeInsets.all(14),
                          child: const Text("okay"),
                        ),
                      ),
                    ],
                  ),
                );
              }),
          DrawerListTile(
              title: 'Staff',
              svgSrc: 'assets/icons/BlogPost.svg',
              tap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Staff(),fullscreenDialog: true));

              }),
          DrawerListTile(
              title: 'Clients', svgSrc: 'assets/icons/Message.svg',
              tap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Client(),fullscreenDialog: true));

              }),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListTile(
              title: 'invoices',
               svgSrc: 'assets/icons/sft.svg',

              tap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Invoices(),fullscreenDialog: true));

              }),
          DrawerListTile(

              title: 'AddNew',
              svgSrc: 'assets/icons/Statistics.svg',
              tap: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddNew(),fullscreenDialog: true));

              }),
          // DrawerListTile(
          //     title: 'Settings',
          //     svgSrc: 'assets/icons/Setting.svg',
          //     tap: () {}),
          // DrawerListTile(
          //     title: 'Logout',
          //     svgSrc: 'assets/icons/Logout.svg',
          //     tap: () {}),
        ],
      ),
    );
  }
}
