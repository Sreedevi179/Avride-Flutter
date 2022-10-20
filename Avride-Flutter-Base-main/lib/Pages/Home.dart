// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
//this will be page for explore screen
// this page  number will be according to screen number and relates pages also
//screen-1
//import 'package:ava/Components/locationalter.dart';
import 'package:ava/Components/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'detail_page.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  final List<IconData> _icons=[
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:Container(
          padding: EdgeInsets.all(9),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // this part-1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Explore",
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Charmonman',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          //code is in folder components
                          Search()
                        ],
                      ),

                      //part 2-
                      SizedBox(
                        height: 15,
                      ),
                      //icons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildIcon(0),
                          _buildIcon(1),
                          _buildIcon(2),
                          _buildIcon(3),
                        ],
                      ),
                      SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tour', style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),),
                            GestureDetector(
                              onTap: (){

                              },
                              child: Text(
                                'See more',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.0,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //this part is the card part
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            buildSingleItem(
                              context: context,
                              images: "pic/taj.jpg",
                              title: "Taj Mahal",
                              subTitle: " One of the seven wonders",
                              rating: 4,
                            ),
                            buildSingleItem(
                              context: context,
                              images: "pic/char.jpg",
                              title: "Charminar",
                              subTitle: " A symbol of Hyderabad",
                              rating: 4,
                            ),
                            buildSingleItem(
                              context: context,
                              images: "pic/jaipur.png",
                              title: "Hawa Mahal",
                              subTitle: "The signature building",
                              rating: 4,
                            ),
                            buildSingleItem(
                              context: context,
                              images: "pic/vkma.jpg",
                              title: " Victoria Memorial",
                              subTitle: "Large marble building in Kolkata",
                              rating: 4,
                            ),
                            buildSingleItem(
                              images: "pic/gate.jpg",
                              title: "India Gate",
                              subTitle: "The All India War Memorial",
                              rating: 4,
                            ),
                            buildSingleItem(
                              context: context,
                              images: "pic/qb.jpg",
                              title: "Qutub Minar ",
                              subTitle: "Tallest individual tower ",
                              rating: 4,
                            ),

                          ],
                        ),
                      ),
                      //lower part of screen
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Text(
                            "Near location for you",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      //this card that shows in the lower part
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => DetailPage(
                            title:"Sun Temple, Konark" ,
                            image: "pic/st.jpg",
                            subTitle: "The temple is a UNESCO World Heritage Site",
                            rating:4,
                          )));
                        } ,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12.0),
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff171b22),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                   height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            spreadRadius: 1.0,
                                            color: Color(0xff30221f),
                                          ),
                                        ],
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            "pic/st.jpg",
                                          ),
                                        ),
                                        borderRadius: BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sun Temple \n Konark",
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "The temple is a UNESCO World Heritage Site",
                                          style: TextStyle(
                                            color: Color(0xffaeaeae),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  ".",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xffd17842),
                                                  ),
                                                ),
                                                Text(
                                                  ".",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xffd17842),
                                                borderRadius: BorderRadius.circular(10.0),
                                              ),
                                              child: Icon(Icons.add,
                                                  size: 30, color: Colors.white),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //this container to show rating in top left conner of the card
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              height: 25.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Color(0xffd17842),
                                  ),
                                  Text(
                                    "4",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),

        )
    );
  }

  Widget _buildIcon(int index){
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        _icons[index],
        size: 25.0,
        color: Colors.white38,
      ),
    );
  }


  // this of parameters with code of function of card
  Widget buildSingleItem({
    images,
    title,
    subTitle,
    context,
    rating,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage(
          title: title,
          image: images,
          subTitle: subTitle,
          rating: rating,
        )));
      },
      child: Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xff17191f),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                          color: Color(0xff30221f),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: Color(0xffaeaeae),
                          fontSize: 10,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                ".",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffd17842)),
                              ),
                              Text(
                                ".",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffd17842),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
              width: 55.0,
              decoration: BoxDecoration(
                color: Color(0xff231715),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(15.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.star,
                    size: 12,
                    color: Color(0xffd17842),
                  ),
                  Text(
                    "$rating",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }//up to here code of card

}

