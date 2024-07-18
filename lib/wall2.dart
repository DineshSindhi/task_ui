import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wallPaper2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallpaper'),
        backgroundColor: Colors.cyan,
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
              width: double.infinity,
              child: Image.network('https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg'
              ,fit: BoxFit.fill,)),
          Positioned(
            bottom: 20,
            left: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.blue.shade600,
                    ),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.info,size: 35,color: Colors.white,),
                    ),
                    Text('Info',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blue.shade600,
                      ),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.download,size: 35,color: Colors.white,),
                    ),
                    Text('Save',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: Colors.blue.shade900,
                      ),
                      width: 80,
                      height: 80,
                      child: Icon(Icons.brush,size: 35,color: Colors.white,),
                    ),
                    Text('Apply',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}