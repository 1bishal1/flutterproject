import 'package:flutter/material.dart';

class detailPage extends StatefulWidget {
  const detailPage({super.key});

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height:40),
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
                  child: Icon(Icons.arrow_back,size: 25,color: Colors.white)),
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
            padding: const EdgeInsets.only(left:15.0,right: 15),
            child: Row(
              children: [
                Text("Author Name"),
                Text("Sep 25 2025")
              ],
            ),
          )

        ],
      ),
    );
  }
}
