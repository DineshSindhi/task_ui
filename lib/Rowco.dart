import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rowco extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                      'https://img.freepik.com/free-photo/portrait-handsome-smiling-stylish-young-man-model'
                          '-dressed-red-checkered-shirt-fashion-man-posing_158538-4909.jpg',width: 50,height: 50,),),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('Hi,Jeck!',style: TextStyle(fontSize: 25),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Icon(Icons.notifications_outlined,size: 35,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: Icon(Icons.search,size: 35,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on,size:35 ,color: Colors.blue,),
                  Text('Jaipur,Rajesthan',style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network('https://5.imimg.com/data5/SELLER/Default/2023/10/354985216/VA/QU/JX/2685597/flight-booking-cheap-flights-air-tickets-at-lowest-airfare.jpg',
                    width: 430,height: 210,),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network('https://static5.depositphotos.com/1007330/475/i/450/depositphotos_4755326-stock-photo-white-passenger-plane-landing-away.jpg',
                      width: 300,height: 210,),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.grey.shade500,
                        ),
                        width: 70,
                        height: 70,
                       child: Icon(Icons.shopping_bag_outlined,size: 35,color: Colors.blue,)

                      ),
                      Text('Trips',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.grey.shade500,
                        ),
                        width: 70,
                        height: 70,
                          child: Icon(Icons.contacts_rounded,size: 35,color: Colors.green,)
                      ),
                      Text('Tour Guide',style: TextStyle(fontSize: 18),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.grey.shade500,
                        ),
                        width: 70,
                        height: 70,
                          child: Icon(Icons.car_crash,size: 35,color: Colors.blue)
                      ),
                      Text(' Car Rental',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.blue.shade600,
                        ),
                        width: 70,
                        height: 70,
                          child: Icon(Icons.hotel,size: 35,color: Colors.yellow,)
                      ),
                      Text('Hotels',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.blue.shade600,
                        ),
                        width: 70,
                        height: 70,
                          child: Icon(Icons.select_all,size: 35,)
                      ),
                      Text('All',style: TextStyle(fontSize: 20),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Top Trips',style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),

                        ),

                        width: 410,
                        height: 190,
                        child: Image.network('https://wallpapers.com/images/featured/beautiful-ocean-pictures-33b2ht9d8bvriqu6.jpg',fit: BoxFit.fill,),
                      ),
                      Container(
                        //color: Colors.blue,
                        width: 410,
                        height: 125,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Indonesis',style: TextStyle(fontSize: 25),),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Bali',style: TextStyle(fontSize: 25)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Text('4.7',style: TextStyle(fontSize: 25),),
                                    ],
                                  ),
                                  Text('4756+ reviews',style: TextStyle(fontSize: 25),),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}