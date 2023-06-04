import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(context) {



    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          color: Colors.blue,
          padding: const EdgeInsets.all(20),
          height: 255,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:  <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Fonte 1', style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 50,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.black,
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Fonte 1', style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Fonte 1', style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 50,
                            decoration: TextDecoration.none,
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Fonte 1', style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 50,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.none,
                          ),),
                        ),
                      ),
                    ],
                  ),
            ),
          ),
      ),
    );
  }
}