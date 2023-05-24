// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Hello World",
            style: GoogleFonts.pangolin(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'This is Google Fonts',
                  style: GoogleFonts.lato(
                      fontSize: 40,
                      color: Color.fromARGB(255, 255, 0, 230),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hello Musibat",
                  style: GoogleFonts.getFont('Oswald',
                      fontSize: 40,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Hai",
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Grosser_Panda.JPG/1200px-Grosser_Panda.JPG",

                    
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "This is left",
                      style: GoogleFonts.raleway(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Text("This is right",
                        style: GoogleFonts.raleway(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ],
                ),
                TextButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "JANGAN REMAS BIJI KU",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Color.fromARGB(255, 0, 34, 255),
                          textColor: Colors.white,
                          fontSize: 16.0);
                    },
                    child: Text("TOUCH ME",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: Colors.red)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
