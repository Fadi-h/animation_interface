import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(child: Text('Curved Bottom Navigation Bar\n We can change the icons in bottomBar\nNumber of buttons between 3 and 5\nPackage name:curved_navigation_bar', style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),
            SizedBox(height: 25,),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color(0xff34badd),
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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: curved(),
      ),
    );
  }

  Widget curved(){
    return CurvedNavigationBar(
      key: navigationKey,
      backgroundColor: Colors.white,
      color: const Color(0xff34badd),
      items: const [
        Icon(Icons.check, size: 27),
        Icon(Icons.delete, size: 27),
        Icon(Icons.add, size: 27),
        Icon(Icons.calendar_today_outlined, size: 27),
        Icon(Icons.star, size: 27),
      ],
      index: 2,
      height: 50,
      onTap: (index)=> setState(() {

      }),
    );
  }


}
