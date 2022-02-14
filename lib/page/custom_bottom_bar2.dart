import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomBar2 extends StatefulWidget {
  const CustomBottomBar2({Key? key}) : super(key: key);

  @override
  _CustomBottomBar2State createState() => _CustomBottomBar2State();
}

class _CustomBottomBar2State extends State<CustomBottomBar2> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('navy Bottom Navigation Bar\n We can change the icons in bottomBar\nNumber of buttons between 2 and 5\nPackage name:bottom_navy_bar', style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),
            SizedBox(height: 25,),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Color(0xff795df4),
                  borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }


  Widget buildBottomNavigation() {
    return BottomNavyBar(
      backgroundColor: Colors.white,
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
            icon: Icon(Icons.book),
            title: Text('Learn'),
            textAlign: TextAlign.center,
            activeColor: Color(0xffc45df4),
            inactiveColor: Color(0xff795df4)),
        BottomNavyBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
            textAlign: TextAlign.center,
            activeColor: Color(0xffc45df4),
            inactiveColor: Color(0xff795df4)),
        BottomNavyBarItem(
            icon: Icon(Icons.add),
            title: Text('Custom'),
            textAlign: TextAlign.center,
            activeColor: Color(0xffc45df4),
            inactiveColor: Color(0xff795df4)),
        BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            textAlign: TextAlign.center,
            activeColor: Color(0xffc45df4),
            inactiveColor: Color(0xff795df4)),

      ],
    );
  }

}


