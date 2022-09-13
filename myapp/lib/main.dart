import 'package:flutter/material.dart';
import 'package:myapp/sc1.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/sc2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Container(
      alignment: Alignment.topCenter,
        height: 200,
        //width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/4.jpg")),
          
        ),
        
      ),
            Text(
              "Congratulations you have won",
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            Text(
              "choose number",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 241, 106, 2)),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 208, 79, 255),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc1();
                    }));
                  });
                }),
                child: Text("1")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 208, 79, 255),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return sc2();
                    }));
                  });
                }),
                child: Text("2")),
          ],
        ),
      ),
    );
  }
}
