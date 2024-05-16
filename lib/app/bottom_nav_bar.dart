 import 'package:flutter/material.dart';
import 'package:smart_home/app/camera.dart';
import 'package:smart_home/app/home.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selected=0;
  final _list=[
    const HomePage(),
   const Center(child: Text("sad")),
    const CameraScreen()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


body:  Center(
  child: _list[_selected],
),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: const Color(0xFF4B84F4),
        unselectedItemColor: const Color(0xFFB1BACA),
        selectedIconTheme: const IconThemeData(size: 30),
        onTap: (value){
          setState(() {
            _selected=value;
          });
        },
        currentIndex: _selected,
        items: const [

          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mouse),label: 'Device'),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'Camera'),

        ],
      ),

    );
  }
}
