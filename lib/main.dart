
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Rowco.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Myapp",
      debugShowCheckedModeBanner: false,
      home: Rowco(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        width: 600,
        height: 450,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightBlueAccent,width: 7)
              ),
              width: 210,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Container(
                    width: 180,
                    color: Colors.grey.shade200,
                      child: Center(child: Text('Strawberry Pavlova',style:
                      TextStyle(fontSize: 20,fontWeight: FontWeight.w400)))),
                  Container(
                    width: 180,
                    color: Colors.grey.shade200,
                      child: Center(child: Text('Plvlova is a menngue-based '
                          'dessert named after the Russian Fareve features a crap crust'
                          ' and potlight made topped with fruit and whipped cream',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),))),

                  Container(
                      width: 190,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Text('170 Reviews',
                              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),
                        ],
                      )),
                  Container(
                      height: 100,
                      width: 200,
                      color: Colors.grey.shade200,
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.padding,size: 30),
                              Text('PREP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                              Text('25',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.timer,size: 30),
                              Text('COOK',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                              Text('1 hr',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.sports_tennis_outlined,size: 30),
                              Text('FEEDS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                              Text('4-6',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ],
                      )
                  ),

                ],
              ),
            ),
            Container(

              width: 380,
              height: 800,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/task.png', fit: BoxFit.fill ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
