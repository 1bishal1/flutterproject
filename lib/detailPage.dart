import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {

  verticalCard(size,heading,date, buttontext){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder:(context)=>detailPage(),
          ),
        );
      },
      child: Padding(

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
                  decoration: BoxDecoration(color: Colors.black,
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
      ),
    );
  }

  headerCard(size){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: Colors.black,
              height: size.height/3,
              width: size.width,
              child: Icon(Icons.play_circle,size:55,color:Colors.white),
              // decoration: BoxDecoration(
              //   color: Colors.black,
              // ),
            ),
            Positioned(
                left: 20,top: 15,
                child: GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,size: 25,color: Colors.white))
            ),
            Positioned(
                right:20,top:15,
                child: Icon(Icons.share,size: 24,color: Colors.white)),
            // Center(child: Icon(Icons.play_circle,size:55,color:Colors.white))
          ],

        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "This is the class before dashain and we are creating a news app".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),maxLines: 2,overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Author Name"),
              Text("Sep 25 2025")
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "This is the class before dashain and we are creating a news app"
                "This is the class before dashain and we are creating a news app"
                "This is the class before dashain and we are creating a news app"
                "This is the class before dashain and we are creating a news app"
                "This is the class before dashain and we are creating a news app",
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),maxLines: 5,
          ),
        ),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height:size.height,
        child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:40),
          headerCard(size),
            verticalCard(size, "Today is holiday Today is sunday Today is sunday", "10th sept 2025", "Click here"),
            verticalCard(size, "Today is sunday", "10th sept 2025", "Click here"),
            verticalCard(size, "Today is monday", "10th sept 2025", "Click here"),
            verticalCard(size, "Today is tuesday", "10th sept 2025", "Click here")
          ],
        ),
      ),
      ),
    );
  }
}
