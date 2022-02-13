import 'package:flutter/material.dart';


class ValueAnimation extends StatefulWidget {
  const ValueAnimation({Key? key}) : super(key: key);

  @override
  _ValueAnimationState createState() => _ValueAnimationState();
}



class _ValueAnimationState extends State<ValueAnimation> with SingleTickerProviderStateMixin {

  /// be attention to animation var type (int-double) */
  Animation<int>? animation1;
  var animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(duration: Duration(milliseconds: 2000),vsync: this);

    animation1 = IntTween(begin: 0, end: 10).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget? child ){
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Container(
                width: 300,
                height: 150,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                      ),
                    ),
                    AnimatedOpacity(
                      opacity: animation1!.value != 10 ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child:  Text('Loading...',style: TextStyle(fontSize: 25),),
                    ),
                    /** animation Text value*/
                    Text(animation1!.value.toString(),style: TextStyle(fontSize: 30),),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
