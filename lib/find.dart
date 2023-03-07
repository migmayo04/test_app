import 'package:flutter/material.dart';
import 'package:test_app/core/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_app/detail2.dart';


class find extends StatefulWidget{
  const find({Key? key}) : super(key: key);

  @override
  State<find> createState() => _find();
}
class _find extends State<find> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('',
          style: TextStyle(color: Colors.black),),
      ),
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,




      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),

            //welcome to

            Text('Find restaurants to connect,', textAlign: TextAlign.center,
              style: TextStyle
                (fontWeight: FontWeight.bold,
                  fontSize: 41,  ),
            ),
            SizedBox(height: 10),
            Text('Please enter your location or allow access to \n your location to find restaurants near you.',
              style: TextStyle
                (
                  fontSize: 15),
            ),
            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),

                  child: TextField(
                    onChanged: (value){},
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      prefixIcon: Icon(Icons.location_on, size: 20, color: Colors.black,),
                      hintText: 'Select The Station ',

                    ),

                    //login value


                    ),
                ),
              ),

            ),












//
//TEMP CODE
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detail2(),
                    ),
                  );
                },
                child: Text(
                  'Order List',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            //Text('Forget Password?', style: TextStyle(fontSize: 15, color: Colors.grey),),

//TEMP CODE








          ],
        ),

      ),


    );

  }
}