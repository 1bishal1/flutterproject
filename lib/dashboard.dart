import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  horizontalcard(size,heading,date){
    return Stack(
      children: [
        Container(
          height: size.height/5,
          width: size.width/1.5,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15)
          ),
        ),
        Positioned(
            bottom: 15,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,style: TextStyle(color: Colors.white
                    ,fontSize: 18,fontWeight: FontWeight.bold),),
                Text(date,style: TextStyle(color: Colors.white
                    ,fontSize: 14,fontWeight: FontWeight.bold),)
              ],
            )),
        Positioned(
            right: 15,
            bottom: 15,
            child: Icon(
              Icons.play_circle,color: Colors.white,size: 30,
            ))
      ],
    );
  }

  verticalCard(size,heading,date, buttontext){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                width: 120,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              Positioned(left: 40,top: 25,child:Icon(Icons.play_circle,color: Colors.white,size: 40,))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width/2,
                child: Text(heading,style: TextStyle(
                    fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold
                ),overflow: TextOverflow.ellipsis,maxLines: 2,),
              ),
              SizedBox(height: 20,),
              Container(
                width: size.width/2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                      child: Text(buttontext,style: TextStyle(color: Colors.white),),
                    ),
                    Text(date,style: TextStyle(color: Colors.black),),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar:  AppBar(),
      body: Column(
        children: [
          SizedBox(height: 60,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontalcard(size,"This is PCPS","sept 5 2025"),
                horizontalcard(size,"NEWS 245","sept 6 2025"),
                horizontalcard(size, "HI HOW ARE YOU","sept 7 2025"),
                horizontalcard(size, "Happy holidays","sept 8 2025")
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                verticalCard(size, "Today is holiday Today is sunday Today is sunday", "10th sept 2025", "Click here"),
                verticalCard(size, "Today is sunday", "10th sept 2025", "Click here"),
                verticalCard(size, "Today is monday", "10th sept 2025", "Click here"),
                verticalCard(size, "Today is tuesday", "10th sept 2025", "Click here")
              ],
            ),
          )

        ],
      ),
    );
  }
}