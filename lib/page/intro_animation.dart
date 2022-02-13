import 'package:flutter/material.dart';

class IntroAnimation extends StatefulWidget {
  const IntroAnimation({Key? key}) : super(key: key);

  @override
  _IntroAnimationState createState() => _IntroAnimationState();
}

class _IntroAnimationState extends State<IntroAnimation> with SingleTickerProviderStateMixin {

  //create animation controller
  Animation<double>? animation, delayedAnimation, muchDelayedAnimation;
  var animationController;

  @override
  void initState() {
    super.initState();
    //initialize animation
    animationController =
        AnimationController(duration: Duration(milliseconds: 2000),vsync: this);

    //base animation
    animation = Tween(begin:  -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
    ));

    delayedAnimation = Tween(begin:  -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.1, 1.0, curve: Curves.fastOutSlowIn),
    ));

    muchDelayedAnimation = Tween(begin:  -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(0.2, 1.0, curve: Curves.fastOutSlowIn),
    ));

    animationController?.forward();
  }


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    //make animation to scaffold
    return  AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child){
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Container(
                  width: width ,
                  height: height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      /**we add transform to each widget to make animation intro*/
                      Transform(
                        transform: Matrix4.translationValues(animation!.value * width, 0, 0 ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              height: 80,
                              child: TextFormField(
                                style: const TextStyle(color: Colors.black),
                                validator: (email) {
                                  if (email!.isEmpty) {
                                    return 'Username cannot be empty';
                                  } else if (email.length < 4) {
                                    return 'Username must be al least 4 characters long';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                  prefixIcon:
                                  Icon(Icons.email_outlined, color: Colors.black),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.black),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.black)),
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  labelText: 'Email',
                                  hintText: 'Enter Your Email',
                                  hintStyle: TextStyle(color: Colors.black),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(delayedAnimation!.value * width, 0, 0 ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              height: 80,
                              child: TextFormField(
                                  style: const TextStyle(color: Colors.black),
                                  validator: (pass) {
                                    if (pass!.length < 6) {
                                      return 'Password must be at least 6 characters long';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: const Icon(
                                        // Based on passwordVisible state choose the icon
                                        Icons.visibility_off,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {

                                      },
                                    ),
                                    errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                    prefixIcon:
                                    Icon(Icons.vpn_key, color: Colors.black),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.black),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.black)),
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    labelText: 'Password',
                                    hintText: 'Enter Your Password',
                                    hintStyle: TextStyle(color: Colors.black),
                                  ),
                                  keyboardType: TextInputType.visiblePassword),
                            ),
                          ],
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(muchDelayedAnimation!.value * width, 0, 0 ),
                        child: Column(
                          children: [
                            const SizedBox(height: 25),
                            Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(30)),
                              child: TextButton(
                                onPressed: () async {

                                },
                                child: const Text(
                                  'Login',
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
