import 'package:flutter/material.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<CustomBar> {

  List<String> items = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                Container(
                  padding: EdgeInsets.only(right: 25),
                  child: Icon(Icons.settings),
                ),
              ],
              //title: Text('AppBar title', style: TextStyle(color: Colors.white),),
              floating: true,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(

               background: Image.network("https://www.freecodecamp.org/news/content/images/2021/06/w-qjCHPZbeXCQ-unsplash.jpg",fit: BoxFit.cover,),
                title: Text('Flexible Text'),
                centerTitle: true,
              ),
              backgroundColor: Colors.pinkAccent,
              expandedHeight: 220,
              leading: Icon(Icons.arrow_back),
            ),
            _buildGrid(),
          ],
        ),
        ),
      );
  }

  _buildGrid(){
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(bottom: 30, top: 30, right: 10,left: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            primary: false,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      items[index],
                    )
                  )
                ),
              );
            }
        ),
      ),
    );
  }


}
