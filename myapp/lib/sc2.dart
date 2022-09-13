import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class sc2 extends StatefulWidget {
  const sc2({super.key});

  @override
  State<sc2> createState() => _sc2State();
}

class _sc2State extends State<sc2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              "better luck next time",
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
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
      ),
    );
  }
}
