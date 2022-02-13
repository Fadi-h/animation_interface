import 'package:flutter/material.dart';

class NestedBar extends StatefulWidget {
  const NestedBar({Key? key}) : super(key: key);

  @override
  _NestedBarState createState() => _NestedBarState();
}

class _NestedBarState extends State<NestedBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value){
            return [
              SliverAppBar(
                backgroundColor: Colors.red,
                title: Text('Sliver Title'),
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.settings),text: 'Tab1',),
                    Tab(icon: Icon(Icons.book),text: 'Tab2',),
                  ],
                ),
              ),

            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
