// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Components/search.dart';
import 'detail_page.dart';

class SavePage extends StatefulWidget {
  const SavePage({Key? key}) : super(key: key);

  @override
  _SavePageState createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {



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
                          Text("Saved",
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

                      SizedBox(height: 30),

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

                      //this card that shows in the lower part


                    ],
                  ),
                ),
              ),
            ],
          ),

        )
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

