import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/app/bottom_nav_bar.dart';
class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                      height: 400,
                      "image/saplash.png",
          
                  )),
          
              Padding(
                padding: const EdgeInsets.only(left: 19.0,top: 30),
                child: Text(
                  'Control and manage\nyour  house with us',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(letterSpacing: 0.5,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3C3C3C)
                    ),
                    fontSize: 25,
          
                  ),
          
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 19.0,top: 40),
                child: InkWell(
                  focusColor: Colors.red,
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationScreen(),));
                  },
                  child: Container(
                    height: 47,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFF4B84F4)
                    ),
                    child: Center(
                      child: Text("Get started",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                               color: Colors.white
                          ),
                          fontSize: 16,
          
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
