
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myrow extends StatelessWidget {
  List<Map<String ,dynamic>> listwall=[{
    'Image' : Image.network(
        'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',fit: BoxFit.fill,),
  },{
    'Image' : Image.network('https://t4.ftcdn.net/jpg/05/40/82/11/360_F_540821167_aAv3kKYIaUpb3Gkd4ib3Qt61OFcMWuT8.jpg',fit: BoxFit.fill)
  },{
    'Image' : Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWuDrbrqSpvslBimRMX9AdJAhcsjWW0Lc39w&usqp=CAU',fit: BoxFit.fill)
  },{
    'Image' : Image.network('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjEwMTYtYy0wOF8xLWtzaDZtemEzLmpwZw.jpg',fit: BoxFit.fill)
  },
  ];
  List<Map<String ,dynamic>> listCol=[{
    'color':Colors.blue
  },{
    'color':Colors.pink
  },{
    'color':Colors.purple
  },{
    'color':Colors.orange
  },{
    'color':Colors.yellow
  },{
    'color':Colors.greenAccent
  },{
    'color':Colors.grey
  },
  ];
  List<Map<String ,dynamic>> listText=[{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD7SL0KiBBxhOab-4dnwupdEEXQBHvQRQS5A&usqp=CAU'
    ,fit: BoxFit.fill,),
    'Text':'Hello'
  },{
    'Image':Image.network('https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg',fit: BoxFit.fill),
    'Text':'Asis'
  },{
    'Image':Image.network('https://img.freepik.com/free-photo/forest-landscape_71767-127.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709424000&semt=ais',fit: BoxFit.fill),
    'Text':'Asis'
  },{
    'Image':Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFBvYLzJXg6OKR7zgOdXQB4S5tLLxAZevCeg&usqp=CAU',fit: BoxFit.fill),
    'Text':'Asis'
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.grey.shade300,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Find Wallpaper',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                        Icon(Icons.search)
                      ],
                    ),
                  ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Best of the month',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 23),),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listwall.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 500,
                    mainAxisExtent: 200
              ), itemBuilder: (c, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: (listwall[i]['Image'])
                      ),
                    );
              },),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('The color tone',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 23),),
              ],
            ),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listCol.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                ), itemBuilder: (c, i) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: (listCol[i]['color']),
                  ),
                  margin: EdgeInsets.all(7),
                );
              },),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text('Categories',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 23),),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: listText.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4/3

                ), itemBuilder: (c, i) {
                return Stack(
                  children:[ Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ( listText[i]['Image']),
                      ),
                    ),
                  ),
                    Center(child: Text(listText[i]['Text']
                      ,style: TextStyle(fontSize: 30,color: Colors.white),)),
                ]
                );
              },),
            ),
          ),

        ],
      ),
    );
  }
}