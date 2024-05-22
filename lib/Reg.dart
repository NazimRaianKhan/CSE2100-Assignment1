import 'package:assignment1/RegC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:show_hide_password/show_hide_password.dart';

class Reg extends StatelessWidget{
  const Reg({super.key});

  @override
  Widget build(BuildContext context) {

    final RegC r=Get.put(RegC());

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(15),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          'Registration Page',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(2, 0, 2, 2),
                child: Text(
                  'Registration',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  style:const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.account_box_sharp),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  style:const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.email),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  style:const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    hintStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.phone),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters:<TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly],
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  style:const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white10,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  obscureText: true,
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () {
                    r.regMessageShow();
                    r.getToLoginPage();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity,50),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  child: const Text('Sign Up'),
                ),
              ),
            ],

          ),
        )
      ),
    );
  }


}