import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:animation_interface/page/home_page.dart';
import 'package:animation_interface/page/intro_animation.dart';
import 'package:animation_interface/page/nested_scroll_appBar.dart';
import 'package:animation_interface/page/page_one.dart';
import 'package:animation_interface/page/sliver_appbar.dart';
import 'package:animation_interface/page/value_change_animation.dart';
import 'package:flutter/material.dart';

class ChooseOption extends StatefulWidget {
  const ChooseOption({Key? key}) : super(key: key);

  @override
  _ChooseOptionState createState() => _ChooseOptionState();
}

class _ChooseOptionState extends State<ChooseOption> with SingleTickerProviderStateMixin{

  late AnimationController controller;
  bool isPress = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    controller.forward().then((_) async{
      await Future.delayed(Duration(milliseconds: 1000));
      controller.reverse();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }


  void toggleIocn()=>setState(() {
    isPress = !isPress;
    isPress ? controller.forward() : controller.reverse();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB8D8D8),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  color: Color(0xFF4F6367),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextButton(
                    onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    TyperAnimatedText('Position & Curved Animation', textAlign: TextAlign.center,textStyle: TextStyle(color: Colors.white),speed: Duration(milliseconds: 100))
                  ],
                )
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomBar()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xFF4F6367),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                      child: AnimatedTextKit(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomBar()));
                        },
                        repeatForever: true,
                        animatedTexts: [
                          RotateAnimatedText('Sliver AppBar', textStyle: TextStyle(color: Colors.white))
                        ],
                      )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroAnimation()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xFF4F6367),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                      child: AnimatedTextKit(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroAnimation()));
                        },
                        repeatForever: true,
                        animatedTexts: [
                          ScaleAnimatedText('Animation Intro',duration: Duration(milliseconds: 4000), textStyle: TextStyle(color: Colors.white))
                        ],
                      )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ValueAnimation()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xFF4F6367),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                      child: AnimatedTextKit(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ValueAnimation()));
                        },
                        repeatForever: true,
                        animatedTexts: [
                          RotateAnimatedText('Animation value text', textStyle: TextStyle(color: Colors.white))
                        ],
                      )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Color(0xFF4F6367),
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                      child: AnimatedTextKit(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PageOne()));
                        },
                        repeatForever: true,
                        animatedTexts: [
                          RotateAnimatedText('Animation PageRoute', textStyle: TextStyle(color: Colors.white))
                        ],
                      )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Wrap(
                children: [
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.menu_close,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.arrow_menu,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.list_view,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.close_menu,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.play_pause,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.add_event,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.ellipsis_search,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.menu_home,
                      progress: controller,
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      toggleIocn();
                    },
                    icon: AnimatedIcon(
                      color: Color(0xFF4F6367),
                      size: 40,
                      icon: AnimatedIcons.event_add,
                      progress: controller,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
