import 'package:flutter/material.dart';
import 'package:test_app/login2.dart';


class forgetPassword extends StatefulWidget{
  const forgetPassword({Key? key}) : super(key: key);

  @override
  State<forgetPassword> createState() => _forgetPassword();
}


class _forgetPassword extends State<forgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('                      Forget Password',
        style: TextStyle(color: Colors.black),),
    ),
      resizeToAvoidBottomInset: false,
    // key: _scaffoldKey,
    backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),

            //welcome to
            Text('Forgot Password,',
              style: TextStyle
                (fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(height: 10),
            Text('Enter your email address and we will \n send you a reset instructions.',
              style: TextStyle
                (
                  fontSize: 15),
            ),
            SizedBox(height: 40),
            Text('EMAIL ADDRESS', style: TextStyle(fontSize: 15),),
            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validator: (value) {
                  //a.aaba@aa1a_a.com
                  if (value == null ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                    return 'Enter email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  prefixIcon:
                  Icon(Icons.person, size: 20, color: Colors.black),
                  labelText: 'Email Address/ Phone Number',
                ),
              ),
            ),
            SizedBox(height: 40),

            Padding(padding:
            const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(color: Colors.black,
                  borderRadius:BorderRadius.circular(10),
                ),
                width: double.infinity,

                child:
                TextButton( onPressed: () {
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage(),
                    ),
                  );

                },

                  child:
                  Text('RESET PASSWORD', style: TextStyle(
                      color: Colors.white, fontSize: 18)),
                ),

              ),


            ),
          ],
        ),
      ),



    );
  }



}



