
import 'package:animation_interface/page/page_one.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50)
          ),
          child: TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('go the page one',style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
