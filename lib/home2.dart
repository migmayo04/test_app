// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

// ignore: camel_case_types
class _orderState extends State<order> {
  List<DropdownMenuItem<String>> get dropdownItemList {
    return [
      DropdownMenuItem(value: '1', child: Text('item-1')),
      DropdownMenuItem(value: '2', child: Text('item-2')),
      DropdownMenuItem(value: '3', child: Text('item-3')),
      DropdownMenuItem(value: '4', child: Text('item-4')),
      DropdownMenuItem(value: '5', child: Text('item-5')),
    ];
  }

  List titlelist = [
    "chinese",
    "pav bhaji",
    "lassi",
    "limited thali",
    "rice/pulao",
    "sandwich",
    "pani puri",
    "item 1",
    "item 2",
    "item 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Order Details',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 14),
              height: 36,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 20),
                child: DropdownButtonFormField(
                  items: dropdownItemList,
                  onChanged: (String? value) {
                    print(dropdownItemList);
                  },
                  decoration: InputDecoration(
                    hintText: 'Resturant',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          //container 1
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 11),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Train number',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          //container 2
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 11),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Coach No.',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          //container 3
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
            child: Container(
              margin: const EdgeInsets.only(left: 200),
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 11),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Seat no.',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          //container 4
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
            child: Container(
              // margin: const EdgeInsets.only(left: 200),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 11),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Phone number',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
            ),
          ),
          // thail container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 180),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Tranding thali',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Center(
                                child: TextField(
                                  onChanged: (value) {},
                                  decoration: const InputDecoration(
                                    hintText: "Serach",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const Icon(Icons.search),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 230),
            child: Container(
              height: 50,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 10,
                    width: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 5, top: 5),
                      child: Text(
                        'MINI THALI',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )),
            ),
          ),
          // menu items
          Container(
            margin: const EdgeInsets.only(top: 300, left: 10, right: 10),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 300),
            child: Container(
              height: 400,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8, top: 10),
                child: Text(
                  'Menu Items',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          ),

          Container(
            height: 360,
            width: 100,
            margin: EdgeInsets.only(top: 340, left: 10),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "${titlelist[index]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 40,
            width: 80,
            margin: EdgeInsets.only(left: 290, top: 310),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
          ),
          //container 1
          Container(
            margin: const EdgeInsets.only(top: 380, left: 150),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 2
          Container(
            margin: const EdgeInsets.only(top: 450, left: 150),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 3
          Container(
            margin: const EdgeInsets.only(top: 520, left: 150),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 4
          Container(
            margin: const EdgeInsets.only(top: 380, left: 260),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('     HAKKA\n   NOODELS\n      90.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 5
          Container(
            margin: const EdgeInsets.only(top: 450, left: 260),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 6
          Container(
            margin: const EdgeInsets.only(top: 520, left: 260),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
          //container 7
          Container(
            margin: const EdgeInsets.only(top: 620, left: 150),
            height: 60,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Text('VEG SEZWAN\n    NOODELS\n      110.00',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
