import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class App extends StatefulWidget{
  createState(){
    return AppState();
  }

}

class AppState extends State<App>{



  Widget build(context){
    return MaterialApp(
        home: Scaffold(

          backgroundColor: Colors.black,
      appBar: AppBar(
      centerTitle: true,

        title:
          Text('User Feed',
            style: TextStyle(fontWeight: FontWeight.bold),

        ),

      ),
      body:
      ListView.builder(itemBuilder: (context,index){
        return Container(
           child: Container(
              padding: const EdgeInsets.all(20),

              height: 400,
              child: Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                  borderRadius: BorderRadius.circular(20.0),

                ),

                child: Column(

                  children: [

                    Row(
                      children: [
                        SizedBox(width: 20.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/R.jpg') ,
                          minRadius: 15,
                          maxRadius: 17,
                        ),
                        SizedBox(width: 5.0,),
                        Text('Username',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Image.asset('assets/images/download.jpg',
                      height: 255.0,
                      width: 1000.0,
                    ),

                    // SizedBox(
                    //   height: .0,
                    // ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(

                          CupertinoIcons.heart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          CupertinoIcons.bubble_left,
                          color: Colors.white,
                        ),

                      ],
                    )
                  ],
                ),
              ),
            )
        );
      },),


    ),



    );

  }

}
