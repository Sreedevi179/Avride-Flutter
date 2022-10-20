//this a code file of search bar in screen 1

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin{
  late Animation<double> _animation;
  late AnimationController animController;
  bool isForward = false;

  @override
  void initState() {
    super.initState();
    //animation code start
    animController = AnimationController(
        duration: const Duration(milliseconds: 800),
        vsync: this
    );

    final curveAnim = CurvedAnimation(
        parent: animController, curve: Curves.easeIn
    );
    // this will be the value of width of container-c1,as end parameter
    //Dart’s cascade notation—the two dots
    _animation =Tween<double>(begin:0, end: 243).animate(curveAnim)
      ..addListener(() {
        setState(() { });
      });
  }

  @override
  Widget build(BuildContext context) {
    // outter most part
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        color:Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //c1
          Container(
            width:_animation.value,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )
            ),
            child: Padding(
              padding: EdgeInsets.only(bottom:5, left: 20,),
              child: TextField(
                cursorColor: Colors.white12,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),

            ),
          ),
          //c2
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius:_animation.value > 1 ? BorderRadius.only(
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(0),
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))
                    : BorderRadius.circular(50)
            ),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: (){
                if(!isForward){
                  animController.forward();
                  isForward = true;
                }else{
                  animController.reverse();
                  isForward = false;
                }

              },
            ),
          )
        ],
      ),
    );
  }
}
