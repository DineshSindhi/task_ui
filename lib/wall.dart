import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wallPaper extends StatelessWidget{
  List<Map<String,dynamic>> listWall =[{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgp2a7m7i9nWmS20ohPrg-OZZVeOmp5fm9Xg&usqp=CAU',fit: BoxFit.fill,),
  },{
    'Image':Image.network('https://img.pikbest.com/origin/09/08/90/00KpIkbEsTnFx.jpg!w700wp',fit: BoxFit.fill),
  },{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO8zaVwff8knXM4cWkalK4MBXg7puqW4FcBA&usqp=CAU',fit: BoxFit.fill),
  },{
    'Image':Image.network('https://t4.ftcdn.net/jpg/05/40/82/11/360_F_540821167_aAv3kKYIaUpb3Gkd4ib3Qt61OFcMWuT8.jpg',fit: BoxFit.fill),
  },{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNHZ-QoArZWZLOIgBWy7GP8ZByA3IE2PUeMg&usqp=CAU',fit: BoxFit.fill),
  },{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3s7hQNmxAIvLw8RIeJ4RQ5Gdgy3w9mzdNWQ&usqp=CAU',fit: BoxFit.fill),
  },
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Wallpaper'),
         backgroundColor: Colors.blue,
       ),
       body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
               margin: EdgeInsets.symmetric(horizontal: 12),
               child: Text('Nature',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w500),)),
           Container(
               margin: EdgeInsets.symmetric(horizontal: 12),
               child: Text('50 wallpaper available',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
           Expanded(
             child: GridView.builder(
               itemCount: listWall.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
                 childAspectRatio: 9/16
             ),
               itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: (listWall[index]['Image']),
                   ),
                 );
             
             },),
           )
         ],
       ),
     );
  }
}