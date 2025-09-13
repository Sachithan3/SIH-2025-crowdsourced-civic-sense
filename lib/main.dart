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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
        body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(65, 5, 65, 5),
                child: ElevatedButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText('Sign in with ', Color.fromARGB(255, 0, 0, 0)),
                      CustomText('G', Color.fromARGB(255, 66, 133, 244)),
                      CustomText('o', Color.fromARGB(255, 234, 67, 53)),
                      CustomText('o', Color.fromARGB(255, 251, 188, 5)),
                      CustomText('g', Color.fromARGB(255, 66, 133, 244)),
                      CustomText('l', Color.fromARGB(255, 52, 168, 83)),
                      CustomText('e', Color.fromARGB(255, 234, 67, 53)),
                    ],
                  )),
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(65, 5, 65, 5),
                  child: ElevatedButton(
                  onPressed: null,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText('Sign in with User/Email', Color.fromARGB(255, 0, 0, 0)),
                    ],
                  )),
                ),
            ],
          ),
        ),
      ),
    )
    );
  }
}

CustomText(String str, Color clr) => Text(str, 
style: TextStyle(color: clr,
                    fontSize: 18),);
