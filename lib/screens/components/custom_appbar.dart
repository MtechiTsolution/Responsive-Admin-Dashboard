import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/constants/responsive.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'package:responsive_admin_dashboard/screens/components/profile_info.dart';
import 'package:responsive_admin_dashboard/screens/components/search_field.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(

        children: [

          if (!Responsive.isDesktop(context))
            IconButton(
              onPressed: context.read<Controller>().controlMenu,
              icon: Icon(Icons.menu,color: textColor.withOpacity(0.5),),
            ),
        //  Expanded(child: SearchField()),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("SHIFTWARE",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),),
              )),
          ProfileInfo(),
        ],
      ),
    );
  }
}
