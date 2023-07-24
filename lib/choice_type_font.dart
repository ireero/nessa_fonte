import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nessa_fonte/classes/fonte_class.dart';
import 'package:nessa_fonte/first_page.dart';
import 'package:nessa_fonte/second_page.dart';

class ChoiceTypeFont extends StatefulWidget {
  ChoiceTypeFont({super.key});

  List<String> list_types = ['Google Fonts', 'Uploaded'];

  @override
  State<ChoiceTypeFont> createState() {
    // TODO: implement createState
    return _ChoiceTypeFontState();
  }
}

class _ChoiceTypeFontState extends State<ChoiceTypeFont> {
  void escolheTela(int index) {
    Widget screen;
    switch (index) {
      case 0:
        screen = const FirstPage();
        break;
      case 1:
        screen = SecondPage();
        break;
      default:
        screen = const FirstPage();
    }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('lib/images/unnamed.gif')),
                color: Colors.deepOrange,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 104, left: 10),
                child: Text(
                  'Ireero',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Your Favorites'))
          ],
        ),
      ),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: widget.list_types.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Card(
            color: Colors.orange,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                  ),
                  onPressed: () {
                    escolheTela(index);
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.list_types[index],
                          style: GoogleFonts.laila(
                              color: Colors.white, fontSize: 18),
                        ),
                        const Icon(
                          Icons.arrow_right_alt_sharp,
                          color: Colors.white,
                          size: 40,
                        ),
                      ])),
            ),
          ),
        ),
      ),
    );
  }
}
