
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the debug banner
      home: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(65, 5, 65, 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: <Widget>[
                ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Image.asset('Icons/google_icon.png'),
                      ),
                      customText('Sign in with ', Color.fromARGB(255, 0, 0, 0)),
                      customText('G', Color.fromARGB(255, 66, 133, 244)),
                      customText('o', Color.fromARGB(255, 234, 67, 53)),
                      customText('o', Color.fromARGB(255, 251, 188, 5)),
                      customText('g', Color.fromARGB(255, 66, 133, 244)),
                      customText('l', Color.fromARGB(255, 52, 168, 83)),
                      customText('e', Color.fromARGB(255, 234, 67, 53)),
                    ],
                  )),
                  ElevatedButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText('Sign in with User/Email', Color.fromARGB(255, 0, 0, 0)),
                    ],
                  )),
                  TextButton(onPressed: null,
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 15,
                    decorationColor: Color.fromARGB(255, 0, 81, 255),
                    decoration: TextDecoration.underline) ),
                  child: Text('New User? Sign up here!', style: TextStyle(color: Color.fromARGB(255, 0, 81, 255)),),
                  
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

customText(String str, Color clr) => Text(str, 
style: TextStyle(color: clr,
                    fontSize: 18),);
