import 'package:flutter/material.dart';
class ModalBottomSheet extends StatefulWidget {
  @override
  ModalBottomSheetState createState() => ModalBottomSheetState();
}
class ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modal Bottom Sheet',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MODAL BOTTOM SHEET EXAMPLE",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                 showModalBottomSheet(
                     context: context,
                     builder: (context) {
                       return Column(
                         mainAxisSize: MainAxisSize.min,
                         children: <Widget>[
                           ListTile(
                             leading: new Icon(Icons.photo),
                             title: new Text('Photo'),
                             onTap: () {
                               Navigator.pop(context);
                             },
                           ),
                           ListTile(
                             leading: new Icon(Icons.music_note),
                             title: new Text('Music'),
                             onTap: () {
                               Navigator.pop(context);
                             },
                           ),
                           ListTile(
                             leading: new Icon(Icons.videocam),
                             title: new Text('Video'),
                             onTap: () {
                               Navigator.pop(context);
                             },
                           ),
                           ListTile(
                             leading: new Icon(Icons.share),
                             title: new Text('Share'),
                             onTap: () {
                               Navigator.pop(context);
                             },
                           ),
                         ],
                       );
                     });
                }, child: Container(
                child: Text("click"),
            ) )
          ],
        ),
      ),
    );
  }
}