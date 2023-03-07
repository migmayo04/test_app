import 'package:flutter/material.dart';

class forgetPassword2 extends StatefulWidget{
  const forgetPassword2({Key? key}) : super(key: key);

  @override
  State<forgetPassword2> createState() => _forgetPassword2();
}
class _forgetPassword2 extends State<forgetPassword2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('                      Forget Password',
          style: TextStyle(color: Colors.black),),
      ),
      //resizeToAvoidBottomInset: false,
    backgroundColor: Colors.white,




      body: SafeArea(
    child: Column(
    children: [
    SizedBox(height: 25),

    //welcome to

    Text('Reset email sent,',
    style: TextStyle
    (fontWeight: FontWeight.bold,
    fontSize: 40),
    ),
    SizedBox(height: 10),
    Text('We have sent a instructions eamil to \n ',
    style: TextStyle
    (
    fontSize: 15),
    ),
    SizedBox(height: 40),

      Padding(padding:
      const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(color: Colors.black,
            borderRadius:BorderRadius.circular(12),
          ),
          child: Center(

            child: Text('SEND AGAIN', style: TextStyle(
                color: Colors.white, fontSize: 18),
            ),
          ),

        ),


      ),


    ],
    ),

    ),


    );

  }
}