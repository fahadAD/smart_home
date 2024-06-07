import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_home/app/details_sxreen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     backgroundColor: Color(0xFFF3F5FF),
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.white,
                  child:   Column(
                   children: [
                     SizedBox(height: 12,),
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

               // Padding(
               //   padding: const EdgeInsets.only(left: 12.0),
               //   child: Text("hello Morning",
               //     style: GoogleFonts.poppins(
               //       textStyle: const TextStyle(
               //           fontWeight: FontWeight.w600,
               //           color: Color(0xFF3C3C3C)
               //       ),
               //       fontSize: 20,
               //
               //     ),
               //   ),
               // ),
               Padding(
                 padding: const EdgeInsets.only(left: 12.0),
                 child: Text("hello Morning",
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

                     Padding(
                       padding: const EdgeInsets.only(left: 12.0,top: 10),
                       child: Align(
                         alignment: Alignment.topLeft,
                         child: Text("August 7 2020",
                           style: GoogleFonts.roboto(
                             textStyle: const TextStyle(
                                 color: Colors.black
                             ),
                             fontSize: 14,

                           ),
                         ),
                       ),
                     ),
                     const ListTile(
                       leading: CircleAvatar(
                         radius: 17,
                         backgroundColor: Colors.white,
                         backgroundImage: AssetImage("image/sunny.png"),

                       ),
                       title: Text("Sunny",style: TextStyle(color:  Colors.black),),
                       trailing: Text("27℃",style: TextStyle(color: Colors.black,fontSize: 20),),
                     ),


             ],
                  ),
                ),

                   Container(
                   height: 50,

                   child: const TabBar(
                      labelColor: Color(0xFF4B84F4),
                     indicatorColor:  Color(0xFF4B84F4),
                     tabAlignment: TabAlignment.start,
                       isScrollable: true,
                       tabs: [
                     Tab(
                       text: "Living room",

                     ),
                     Tab(
                       text: "Bedroom",
                     ),
                     Tab(
                       text: "kitchen",
                     ),
                     Tab(
                       text: "Bathroom",
                     ),
                   ]),
                 ),
                 Container(
                   height: MediaQuery.of(context).size.height,

                   child: TabBarView(children: [
                     Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              InkWell(
                                onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                  child: Container(
                          
                                    height: 81,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                     ),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(width: 5,),
                                        Image.asset(
                                            height: 62,
                                            width: 62,
                                            'image/ac.png'),
                                        const SizedBox(width: 10,),
                                        Text('Air Conditioner',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: Colors.black,
                          
                                            ),
                                            fontSize: 14,
                          
                                          ),
                                        ),
                                        Spacer(),
                                        Column(children: [
                                          Switch(
                                             activeColor: Color(0xFF4B84F4),
                                            value: true, onChanged: (value) {},),
                                          Text("On",
                                            style: GoogleFonts.poppins(
                                              textStyle:  const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF4B84F4)
                                              ),
                                              fontSize: 14,
                          
                                            ),
                                          )
                                        ],)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Container(
                          
                                  height: 81,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                   ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 5,),
                                      Image.asset(
                                          height: 62,
                                          width: 62,
                                          'image/lamp.png'),
                                      const SizedBox(width: 10,),
                                      Text('Lamp',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                          
                                          ),
                                          fontSize: 14,
                          
                                        ),
                                      ),
                                      Spacer(),
                                      Column(children: [
                                        Switch(
                                          activeColor: Color(0xFF4B84F4),
                                          value: true, onChanged: (value) {},),
                                        Text("On",
                                          style: GoogleFonts.poppins(
                                            textStyle:  const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF4B84F4)
                                            ),
                                            fontSize: 14,
                          
                                          ),
                                        )
                                      ],)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Container(
                          
                                  height: 81,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                   ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 5,),
                                      Image.asset(
                                          height: 62,
                                          width: 62,
                                          'image/smarttv.png'),
                                      const SizedBox(width: 10,),
                                      Text('Smart Tv',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                          
                                          ),
                                          fontSize: 14,
                          
                                        ),
                                      ),
                                      Spacer(),
                                      Column(children: [
                                        Switch(
                                          value: false, onChanged: (value) {},),
                                        Text("Off",
                                          style: GoogleFonts.poppins(
                                            textStyle:  const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF4B84F4),
                                            ),
                                            fontSize: 14,
                          
                                          ),
                                        )
                                      ],)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                child: Container(
                          
                                  height: 81,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                   ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 5,),
                                      Image.asset(
                                          height: 62,
                                          width: 62,
                                          'image/specker.png'),
                                      const SizedBox(width: 10,),
                                      Text('Speakers',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            color: Colors.black,
                          
                                          ),
                                          fontSize: 14,
                          
                                        ),
                                      ),
                                      Spacer(),
                                      Column(children: [
                                        Switch(
                                       activeColor: Color(0xFF4B84F4),
                                          value: true, onChanged: (value) {},),
                                        Text("On",
                                          style: GoogleFonts.poppins(
                                            textStyle:  const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF4B84F4)
                                            ),
                                            fontSize: 14,
                          
                                          ),
                                        )
                                      ],)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     Container(
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             SizedBox(height: 20,),
                             InkWell(
                               onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
                               },
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                 child: Container(

                                   height: 81,
                                   width: double.infinity,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       const SizedBox(width: 5,),
                                       Image.asset(
                                           height: 62,
                                           width: 62,
                                           'image/ac.png'),
                                       const SizedBox(width: 10,),
                                       Text('Air Conditioner',
                                         style: GoogleFonts.poppins(
                                           textStyle: const TextStyle(
                                             color: Colors.black,

                                           ),
                                           fontSize: 14,

                                         ),
                                       ),
                                       Spacer(),
                                       Column(children: [
                                         Switch(
                                           activeColor: Color(0xFF4B84F4),
                                           value: true, onChanged: (value) {},),
                                         Text("On",
                                           style: GoogleFonts.poppins(
                                             textStyle:  const TextStyle(
                                                 fontWeight: FontWeight.w600,
                                                 color: Color(0xFF4B84F4)
                                             ),
                                             fontSize: 14,

                                           ),
                                         )
                                       ],)
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/lamp.png'),
                                     const SizedBox(width: 10,),
                                     Text('Lamp',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/smarttv.png'),
                                     const SizedBox(width: 10,),
                                     Text('Smart Tv',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         value: false, onChanged: (value) {},),
                                       Text("Off",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                             fontWeight: FontWeight.w600,
                                             color: Color(0xFF4B84F4),
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/specker.png'),
                                     const SizedBox(width: 10,),
                                     Text('Speakers',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Container(
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             SizedBox(height: 20,),
                             InkWell(
                               onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
                               },
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                 child: Container(

                                   height: 81,
                                   width: double.infinity,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       const SizedBox(width: 5,),
                                       Image.asset(
                                           height: 62,
                                           width: 62,
                                           'image/ac.png'),
                                       const SizedBox(width: 10,),
                                       Text('Air Conditioner',
                                         style: GoogleFonts.poppins(
                                           textStyle: const TextStyle(
                                             color: Colors.black,

                                           ),
                                           fontSize: 14,

                                         ),
                                       ),
                                       Spacer(),
                                       Column(children: [
                                         Switch(
                                           activeColor: Color(0xFF4B84F4),
                                           value: true, onChanged: (value) {},),
                                         Text("On",
                                           style: GoogleFonts.poppins(
                                             textStyle:  const TextStyle(
                                                 fontWeight: FontWeight.w600,
                                                 color: Color(0xFF4B84F4)
                                             ),
                                             fontSize: 14,

                                           ),
                                         )
                                       ],)
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/lamp.png'),
                                     const SizedBox(width: 10,),
                                     Text('Lamp',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/smarttv.png'),
                                     const SizedBox(width: 10,),
                                     Text('Smart Tv',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         value: false, onChanged: (value) {},),
                                       Text("Off",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                             fontWeight: FontWeight.w600,
                                             color: Color(0xFF4B84F4),
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/specker.png'),
                                     const SizedBox(width: 10,),
                                     Text('Speakers',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Container(
                       child: SingleChildScrollView(
                         child: Column(
                           children: [
                             SizedBox(height: 20,),
                             InkWell(
                               onTap: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
                               },
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                                 child: Container(

                                   height: 81,
                                   width: double.infinity,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       const SizedBox(width: 5,),
                                       Image.asset(
                                           height: 62,
                                           width: 62,
                                           'image/ac.png'),
                                       const SizedBox(width: 10,),
                                       Text('Air Conditioner',
                                         style: GoogleFonts.poppins(
                                           textStyle: const TextStyle(
                                             color: Colors.black,

                                           ),
                                           fontSize: 14,

                                         ),
                                       ),
                                       Spacer(),
                                       Column(children: [
                                         Switch(
                                           activeColor: Color(0xFF4B84F4),
                                           value: true, onChanged: (value) {},),
                                         Text("On",
                                           style: GoogleFonts.poppins(
                                             textStyle:  const TextStyle(
                                                 fontWeight: FontWeight.w600,
                                                 color: Color(0xFF4B84F4)
                                             ),
                                             fontSize: 14,

                                           ),
                                         )
                                       ],)
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/lamp.png'),
                                     const SizedBox(width: 10,),
                                     Text('Lamp',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/smarttv.png'),
                                     const SizedBox(width: 10,),
                                     Text('Smart Tv',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         value: false, onChanged: (value) {},),
                                       Text("Off",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                             fontWeight: FontWeight.w600,
                                             color: Color(0xFF4B84F4),
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                             SizedBox(height: 15,),
                             Padding(
                               padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                               child: Container(

                                 height: 81,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                 ),
                                 child: Row(
                                   crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     const SizedBox(width: 5,),
                                     Image.asset(
                                         height: 62,
                                         width: 62,
                                         'image/specker.png'),
                                     const SizedBox(width: 10,),
                                     Text('Speakers',
                                       style: GoogleFonts.poppins(
                                         textStyle: const TextStyle(
                                           color: Colors.black,

                                         ),
                                         fontSize: 14,

                                       ),
                                     ),
                                     Spacer(),
                                     Column(children: [
                                       Switch(
                                         activeColor: Color(0xFF4B84F4),
                                         value: true, onChanged: (value) {},),
                                       Text("On",
                                         style: GoogleFonts.poppins(
                                           textStyle:  const TextStyle(
                                               fontWeight: FontWeight.w600,
                                               color: Color(0xFF4B84F4)
                                           ),
                                           fontSize: 14,

                                         ),
                                       )
                                     ],)
                                   ],
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ]),
                 )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
