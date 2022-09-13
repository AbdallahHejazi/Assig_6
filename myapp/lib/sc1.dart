import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
       children: [
        Divider(height: 30),
    Container(
      alignment: Alignment.center,
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/2.jpg")),
          
        ),
        
      ),
      Text("Congratulations",style: TextStyle(fontSize: 30, color: Colors.amber),),
       Text("you won Classic Ford Broncos",style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 255, 94, 7)),),

        ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 208, 79, 255),
                ),
                onPressed: (() {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  });
                }),
                child: Text("Back")),
       ],
      ),
    );
  }
}
