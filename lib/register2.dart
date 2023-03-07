
import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/login2.dart';

import 'home2.dart';




class  register extends StatefulWidget{
  const register({super.key});
  @override
  State<register> createState() => _registerState();

}

class _registerState extends State<register>{
  bool passwordVisible = false;
  final _formkey = GlobalKey<FormState>();
  @override
  void initState(){
    super.initState();
    passwordVisible = true;
  }
   @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('SING UP', style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 25),
              Text('Create Account,', style: TextStyle(fontWeight: FontWeight.bold,
     fontSize: 40),
              ),
              SizedBox(height: 10),
              Text('Enter your Name, Email and Password \n For sign in',
                style: TextStyle
                  (
                    fontSize: 15, color: Colors.black54),

              ),
          Align(
            alignment: Alignment.topRight,
          ),
          TextButton(
            onPressed: () {

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            child: Text(
              ' Already have a accoun!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),

              SizedBox(height: 40),
              Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                      return "Enter your correct name";
                    }else{
                      return null;
                    }

                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    prefixIcon:
                    Icon(Icons.person, size: 20, color: Colors.black),
                    labelText: 'Full Name',
                  ),
                ),
              ),

              SizedBox(height: 15),
              // emailTextfiled
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

              SizedBox(height: 15),

              //Password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    // should contain at least one digit
                    if (value == null || !RegExp('[0-9]').hasMatch(value)) {
                      return 'Enter a valid password';
                    }
                    return null;
                  },
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible = !passwordVisible;
                              },
                            );
                          },
                          icon: Icon(passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      labelText: 'Password'),
                ),
              ),

              SizedBox(height: 15),

              // forget password



              SizedBox(height: 15),

              //sigin button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Center(
                              child: Text(
                                'Process Success',
                              ),
                            ),
                          ),
                        );
                        Navigator.push(context, MaterialPageRoute(builder: (context) => order()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'SING UP',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              const Text(
                'Or',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 17, 20, 212),
                    ),
                    child: const Text(
                      'CONNECT WITH FACEBOOK',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'CONNECT WITH GOOGLE',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
   }
}
