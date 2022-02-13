
import 'package:animation_interface/page/page_three.dart';
import 'package:animation_interface/page/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFB8D8D8),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context,animation, animationTwo) => PageTwo(),
                      transitionsBuilder: (context, animation, animationTwo, child){
                        var begin = Offset(0, 1);
                        var end = Offset.zero;
                        var tween = Tween(begin: begin, end: end);
                        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
                        return SlideTransition(position: tween.animate(curvesAnimation), child: child,);
                      },
                    ),
                  );
                },
                child: Text('go the page two - 1st / Slide',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context,animation, animationTwo) => PageTwo(),
                      transitionsBuilder: (context, animation, animationTwo, child){
                        var begin = Offset(1, 0);
                        var end = Offset(0, 0);
                        var tween = Tween(begin: begin, end: end);
                        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
                        return SlideTransition(position: tween.animate(curvesAnimation), child: child,);
                      },
                    ),
                  );
                },
                child: Text('go the page two - 2nd / Slide',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context,animation, animationTwo) => PageTwo(),
                      transitionsBuilder: (context, animation, animationTwo, child){
                        var begin = 0.0;
                        var end = 1.0;
                        var tween = Tween(begin: begin, end: end);
                        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
                        return ScaleTransition(scale: tween.animate(curvesAnimation), child: child,);
                      },
                    ),
                  );
                },
                child: Text('go the page two - 3rd / Zoom',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context,animation, animationTwo) => PageThree(),
                      transitionsBuilder: (context, animation, animationTwo, child){
                        var begin = 0.0;
                        var end = 1.0;
                        var tween = Tween(begin: begin, end: end);
                        var curvesAnimation = CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
                        return RotationTransition(turns: tween.animate(curvesAnimation), child: child,);
                      },
                    ),
                  );
                },
                child: Text('go the page two - 4th Rotation',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context,animation, animationTwo) => PageTwo(),
                      transitionsBuilder: (context, animation, animationTwo, child){
                        return FadeTransition(opacity: animation,child: child,);
                      },
                    ),
                  );
                },
                child: Text('go the page two - 5th Fade',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ),
            const SizedBox(height: 15,),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(
                onPressed: (){
                Navigator.pop(context);
                },
                child: Text('Back',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
