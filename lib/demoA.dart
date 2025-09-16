import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoA extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
   return DemoAState();
  }
}

class DemoAState extends State<DemoA>{
  demofunc(size,String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Container(
            height: size.height/5,
            width: size.width/1.5,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black)
            ) ,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person , color:Colors.white, size: 25,),
                Text(text,style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold),)
              ],
            )
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          demofunc(size,"demotext1"),
          demofunc(size,"demotext2"),
          demofunc(size,"demotext3"),


        ],
      ),

    );

  }

}