
import 'package:flutter/material.dart';

class page extends StatelessWidget {
  TextEditingController namController=TextEditingController();
  TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar:
     AppBar(
       title: Text('Page'),
         backgroundColor: Colors.cyanAccent),
     body: Container(
       width: double.infinity,
       color: Colors.black,
       child: Container(
         margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               margin: EdgeInsets.only(top: 24),
                 child: Text("Log in to Scal",style: TextStyle(fontSize: 35,color: Colors.white),)),
             Container(
               margin: EdgeInsets.symmetric(vertical: 16,horizontal: 7),
                 child: Text('Email',style: TextStyle(fontSize: 25,color: Colors.white),)),
             Container(
               child: TextField(
                decoration : InputDecoration(
                  hintText: 'Entre Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey
                    )
                  ),
                  border: OutlineInputBorder(),),
                 controller: namController,
               ),
             ),
             Container(
                 margin: EdgeInsets.symmetric(vertical: 16,horizontal: 7),
                 child: Text('Password',style: TextStyle(fontSize: 25,color: Colors.white),)),
             TextField(
               decoration: InputDecoration(
                 hintText: 'Enter Password',
                   enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                           color: Colors.grey
                       )
                   ),
                 border: OutlineInputBorder(),
                 suffixIcon: Icon(Icons.remove_red_eye)

               ),
               controller: passController,
             ),
             Container(
                 margin: EdgeInsets.symmetric(vertical: 16,horizontal: 7),
                 child: Text('Forget Password?',style: TextStyle(fontSize: 25,color: Colors.green),)),
             Container
               (margin: EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: Colors.white,
                   borderRadius: BorderRadius.all(Radius.circular(10)),),

                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Login',style: TextStyle(fontSize: 28,color: Colors.black),),

                   ],
                 )),
             Container(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('OR',style: TextStyle(fontSize: 28,color: Colors.grey),),
                   ],
                 )),
             Container(margin: EdgeInsets.all(7),
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
                 height: 55,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image.asset('assets/images/google.png',height: 30,width: 50,),
                 Text('Continue with Apple',style: TextStyle(fontSize: 23,color: Colors.white),),
               ],
             )),
             Container(
                 margin: EdgeInsets.all(7),
               decoration: BoxDecoration(
                 border: Border.all( color:Colors.grey ),
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
                 height: 55,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: EdgeInsets.only(right: 20),
                       child: Image.asset('assets/images/google.png',height: 30,width: 50,),
                     ),
                     Text('Continue with Google',style: TextStyle(fontSize: 23,color: Colors.white),),
                   ],
                 )),



           ],
         ),
       ),
     ),
   );
  }
}
