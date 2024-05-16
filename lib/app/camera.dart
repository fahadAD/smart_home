import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5FF),
       body: SafeArea(
         child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.white,
                child:   Column(
                  children: [
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text("Good Morning",
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF3C3C3C)
                              ),
                              fontSize: 20,
          
                            ),
                          ),
                        ),
          
                        const Padding(
                          padding: EdgeInsets.only(right: 12.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFFF3F5FF),
                            backgroundImage: AssetImage("image/woman.png"),
          
                          ),
                        ),
          
          
                      ],
                    ),


          
          
                  ],
                ),
              ),

              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,right: 8,left: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Living Room',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3C3C3C),
                              letterSpacing: 0.5
                            ),
                            fontSize: 16,

                          ),
                        ),
                        Text('30s ago',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xFF757575),
                              letterSpacing: 0.5
                            ),
                            fontSize: 14,

                          ),
                        ),
                      ],),
                    ),
                    Spacer(),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                              width: double.infinity,
                              "image/living.png"),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration:   BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF091326).withOpacity(0.4),

                          ),
                          child: Icon(Icons.play_arrow,color:  Colors.white,size: 25,),
                        )
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0,right: 8,left: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Kitchen',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF3C3C3C),
                              letterSpacing: 0.5
                            ),
                            fontSize: 16,

                          ),
                        ),
                        Text('15s ago',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xFF757575),
                              letterSpacing: 0.5
                            ),
                            fontSize: 14,

                          ),
                        ),
                      ],),
                    ),
                    Spacer(),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                              width: double.infinity,
                              "image/dining.png"),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration:   BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF091326).withOpacity(0.4),

                          ),
                          child: Icon(Icons.play_arrow,color:  Colors.white,size: 25,),
                        )
                      ],
                    ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0,right: 8,left: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bed Room',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF3C3C3C),
                                    letterSpacing: 0.5
                                ),
                                fontSize: 16,

                              ),
                            ),
                            Text('30s ago',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Color(0xFF757575),
                                    letterSpacing: 0.5
                                ),
                                fontSize: 14,

                              ),
                            ),
                          ],),
                      ),
                      Spacer(),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                                width: double.infinity,
                                "image/living.png"),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration:   BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF091326).withOpacity(0.4),

                            ),
                            child: Icon(Icons.play_arrow,color:  Colors.white,size: 25,),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
               ),
       ),
    );
  }
}
