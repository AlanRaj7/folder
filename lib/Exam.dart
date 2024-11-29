import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  Color _containerColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Color Picker",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.red; // Change to red
              });
             
            }, child: Text("RED")),
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.green; // Change to red
               });
            }, child: Text("GREEN")),
            ElevatedButton(onPressed: () {
              setState(() {
                      _containerColor = Colors.blue; // Change to red
               });
            }, child: Text("BLUE")),
            ElevatedButton(onPressed: () {
             setState(() {
                      _containerColor = Colors.yellow; // Change to red
                    });
            }, child: Text("YELLOW")),
            ElevatedButton(onPressed: () {
             setState(() {
                      _containerColor = Colors.orange; // Change to red
                  });
            }, child: Text("ORANGE")),
             Container(
                height: 300,
                width: 300,
                color: _containerColor,
              ),
          ],
        ),
      ),
    );
  }
}