import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFB8D8D8),
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
