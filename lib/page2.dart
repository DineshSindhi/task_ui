
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  TextEditingController emController=TextEditingController();
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 12,top: 50,left: 18),

                child: Text('Get your free account',style: TextStyle(fontSize: 33,color: Colors.white),)),
            Container(
                height: 55,
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.grey)
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Image.asset('assets/image/google.png',),
                    Text('Continue with Google',style: TextStyle(fontSize: 25,color: Colors.white),),
                  ],
                )),
            Container(
                height: 55,
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Image.asset('assets/image/apple-logo.png',),
                    Text('Continue with Apple',style: TextStyle(fontSize: 25,color: Colors.white),),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  //border:
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      ),
                    ),
                    Text('OR',style: TextStyle(fontSize: 30,color: Colors.grey),),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text('Work Email',style: TextStyle(fontSize: 25,color: Colors.white),),
                  Text('*',style: TextStyle(fontSize: 20,color: Colors.green),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(

                  label: Text('Enter Email'),
                  border: OutlineInputBorder(),
                ),
                controller: emController,),
            ),
            Container(

                margin: EdgeInsets.only(left: 18,right: 18,top: 12,bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
              ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Continue with Email',style: TextStyle(fontSize: 30,color: Colors.black),),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(margin: EdgeInsets.symmetric(vertical: 12),
                    child: Text('Already have an account  '
                      ,style: TextStyle(fontSize: 20,color: Colors.grey),)),
                Text('Login',style: TextStyle(fontSize: 21,color: Colors.green),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
