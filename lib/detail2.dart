import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/home2.dart';


class detail2 extends StatefulWidget{
  const detail2({Key? key}) : super(key: key);

  @override
  State<detail2> createState() => _detail2();
}
class _detail2 extends State<detail2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('                           Order List2',
        style: TextStyle(color: Colors.black),),
    ),
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,


    body: SafeArea(
    child: Column(
        children: [

          Padding(
            padding: getPadding(top: 15),
            child: Row(
              mainAxisSize:
              MainAxisSize
                  .min,
              mainAxisAlignment:
              MainAxisAlignment
                  .start,
              children: [
               // SizedBox(width:15,),
                ElevatedButton(

                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                  ),
                  child: Text('Active', style: TextStyle(fontWeight:FontWeight.bold),
                  ),


                ),
                SizedBox(width: 30,),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                    ),
                    child: Text('Delivered', style: TextStyle(fontWeight:FontWeight.bold),)
                ),
                SizedBox(width: 30,),
                ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                    ),
                    child: Text('Cancelled', style: TextStyle(fontWeight:FontWeight.bold),)
                ),
              ],
            ),

          ),

          SizedBox(height: 20),



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

                    prefixIcon: Icon(Icons.search, size: 20, color: Colors.black,),
                    hintText: 'Search On List ',

                  ),

                  //login value


                ),
              ),
            ),

          ),

          SizedBox(height: 10,),



        ],




    ),


    ),
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed:(){},
                backgroundColor: Colors.amber,
                child: Icon(Icons.filter_alt),),
            ),),

          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: (){


                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => order(),
                  ),
                );
              },
              backgroundColor: Colors.green,
              child: Icon(Icons.add),),
          ),
        ],
      ),
    );

  }

}