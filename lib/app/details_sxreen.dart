import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  double _progress = 0;
   double startAngle=100;
  double sweepAngle=100;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Air Conditioner",
            style: GoogleFonts.poppins(
            textStyle: const TextStyle(
            color: Colors.black,
           fontWeight: FontWeight.w600
          ),
          fontSize: 15,

        ),),
        ),
        body:   SingleChildScrollView(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20,),
              _progress==0?Stack(
                  clipBehavior: Clip.none,
                alignment:  Alignment.center,
                children: [
                  CircularSeekBar(
                    width: double.infinity,
                    height: 270,
                    progress: 100,
                    barWidth: 8,
                    startAngle: 45,
                    sweepAngle: 270,
                    strokeCap: StrokeCap.butt,
                    progressGradientColors: const [Color(0xFF4B84F4),Color(0xFF4B84F4), ],
                    dashWidth: 1,
                    dashGap: 5,
                    animation: true,
                  ),
                  Positioned(

                    child: CircularSeekBar(
                      width: double.infinity,
                      height: 230,
                      progress: 100,
                      barWidth: 12,
                      startAngle: 250,
                      sweepAngle: 400,
                      strokeCap: StrokeCap.butt,
                      progressColor: Color(0xFFF3F5FF),
                      innerThumbRadius: 5,
                      innerThumbStrokeWidth: 3,
                      innerThumbColor: Color(0xFFF3F5FF),

                      outerThumbRadius: 5,
                      outerThumbStrokeWidth: 10,
                      outerThumbColor: Color(0xFF4B84F4),
                      animation: true,
                    ),
                  ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("0",
                          style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 7,),
                          Text("℃")
                        ],
                      ),
                      const Text('Sleeping',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 14
                      ),

                      )
                    ],
                  )
                ],
              ):
              Stack(
                clipBehavior: Clip.none,
                alignment:  Alignment.center,
                children: [
                  CircularSeekBar(
                    width: double.infinity,
                    height: 270,
                    progress: _progress,
                    barWidth: 8,
                    startAngle: 45,
                    sweepAngle: 270,
                    strokeCap: StrokeCap.butt,
                    progressGradientColors: const [Color(0xFF4B84F4),Color(0xFF4B84F4), ],
                    dashWidth: 1,
                    dashGap: 5,
                    animation: true,
                  ),
                  Positioned(

                    child: CircularSeekBar(
                      width: double.infinity,
                      height: 230,
                      progress: _progress,
                      barWidth: 12,
                      startAngle: 250,
                      sweepAngle: 400,
                      strokeCap: StrokeCap.butt,
                      progressColor: Color(0xFFF3F5FF),
                      innerThumbRadius: 5,
                      innerThumbStrokeWidth: 3,
                      innerThumbColor: Color(0xFFF3F5FF),

                      outerThumbRadius: 5,
                      outerThumbStrokeWidth: 10,
                      outerThumbColor: Color(0xFF4B84F4),
                      animation: true,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${_progress}",
                            style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 7,),
                          Text("℃")
                        ],
                      ),
                      const Text('Sleeping',
                        style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 14
                        ),

                      )
                    ],
                  )
                ],
              ),

              const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    startAngle--;
                    sweepAngle--;
                    _progress--;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFFC8D0E0))
                  ),
                  child: Icon(Icons.remove,size: 29,color:  Color(0xFFC8D0E0),),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    // startAngle++;
                    // sweepAngle++;
                    _progress++;
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFF4B84F4))
                  ),
                  child: Icon(Icons.add,size: 29,color:  Color(0xFF4B84F4),),
                ),
              ),
            ],
          ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,bottom: 20),
                child: Text('Pattern',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    fontSize: 18,

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:  const Color(0xFFF3F5FF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'image/vector.png',
                          height: 30,
                        ),
                        const Text('Cooling',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:  const Color(0xFFF3F5FF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'image/sunny.png',
                          height: 30,
                        ),
                        const Text('Heating',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),

                  ),
                ],
              ),


           const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:  const Color(0xFF4B84F4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'image/night.png',
                          height: 30,
                        ),
                        const Text('Sleeping',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),

                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:  const Color(0xFFF3F5FF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'image/liguid.png',
                          height: 30,
                        ),
                        const Text('Purifier',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
