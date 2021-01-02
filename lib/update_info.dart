import 'package:first_assignment/src/model/hero.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UpdateDetails extends StatefulWidget {
  @override
  _UpdateDetailsState createState() => _UpdateDetailsState();
}

class _UpdateDetailsState extends State<UpdateDetails> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        bottomOpacity: 5,
        title: Text("Update Heroes Info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
      ),
      backgroundColor: Colors.teal.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                  hintText: " Name: ",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[700],

                  ),

                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true
              ),

              keyboardType: TextInputType.text,
              obscureText: false,
              maxLength: 30,
            ),TextField(
              decoration: InputDecoration(
                  hintText: "Origin: ",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                  ),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true
              ),
              keyboardType: TextInputType.text,
              obscureText: false,
              maxLength: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Health: ",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                  ),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true
              ),
              keyboardType: TextInputType.number,
              obscureText: false,
              maxLength: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Stamina: ",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                  ),
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  filled: true
              ),
              keyboardType: TextInputType.number,
              obscureText: false,
              maxLength: 10,
            ),


          ],

        ),
      ),
    );
  }
}
