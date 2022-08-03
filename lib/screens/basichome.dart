import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_animated_app/constanins.dart';
import 'package:tesla_animated_app/home_controller.dart';

import 'components/door_lock.dart';
import 'components/tesla_bottom_navigationbar.dart';
import 'home_screen.dart';
import 'hometwo.dart';


class BasicScreen extends StatelessWidget {
  BasicScreen({Key? key}) : super(key: key);

 // final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: TeslaBottomNavigationBar(
      //   onTap: (index) {},
      //   selectedTab: 1,
      // ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constrains) {
            return Column(

           //   alignment: Alignment.center,
              children: [
                SizedBox(height: 20.0,),
                Center(
                  child: Image.asset(
                    "assets/icons/tel.png",
                    width: 35,
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                  "Model Y",
                  style: TextStyle(
                      fontSize: 30,
                      height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                      color: Colors.red, //font color
                      backgroundColor: Colors.black12, //background color
                      letterSpacing: 5, //letter spacing//decoration 'underline' thickness
                      fontStyle: FontStyle.italic
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 25.0,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.4),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 25.0,
                        ),
                      ],
                      color: Color(0xFF292D32),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Image.asset(
                      "assets/icons/telint.jpeg",
                      width: double.infinity,
                    ),
                  ),
                ),

                SizedBox(height: 60.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 70,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.4),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 25.0,
                            ),
                            BoxShadow(
                              color: Colors.red.withOpacity(0.8),
                              offset: Offset(0.0, 5.0),
                              blurRadius: 25.0,
                            ),
                          ],
                          color: Color(0xFF292D32),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Driver Door Unlock Mode",
                            style: TextStyle(
                                fontSize: 20,
                               fontWeight: FontWeight.bold,
                               // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                                color: Colors.white, //font color
                               // backgroundColor: Colors.black12, //background color
                              //  letterSpacing: 5, //letter spacing//decoration 'underline' thickness

                            ),)),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeTwoScreen()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 70,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.4),
                              offset: Offset(0.0, 0.0),
                              blurRadius: 25.0,
                            ),
                            BoxShadow(
                              color: Colors.red.withOpacity(0.8),
                              offset: Offset(0.0, 5.0),
                              blurRadius: 25.0,
                            ),
                          ],
                          color: Color(0xFF292D32),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Climate Controls",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                              color: Colors.white, //font color
                              // backgroundColor: Colors.black12, //background color
                              //  letterSpacing: 5, //letter spacing//decoration 'underline' thickness

                            ),)),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                  ],

                ),
                SizedBox(height: 35.0,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Autopilot's advanced safety and convenience features are designed to assist you with the most burdensome parts of driving.",
                    style: TextStyle(
                        fontSize: 10,
                        // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                        color: Colors.white, //font color
                        backgroundColor: Colors.black12, //background color
                        letterSpacing: 0, //letter spacing//decoration 'underline' thickness
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                // Door Locks
                // Positioned(
                //   right: constrains.maxWidth * 0.05,
                //   child: DoorLock(
                //     isLock: _controller.isRightDoorLock,
                //     press: _controller.updateRightDoorLock,
                //   ),
                // ),
                // Positioned(
                //   left: constrains.maxWidth * 0.05,
                //   child: DoorLock(
                //     isLock: _controller.isLeftDoorLock,
                //     press: _controller.updateLeftDoorLock,
                //   ),
                // ),
                // Positioned(
                //   top: constrains.maxHeight * 0.13,
                //   child: DoorLock(
                //     isLock: _controller.isBonnetLock,
                //     press: _controller.updateBonnetDoorLock,
                //   ),
                // ),
                // Positioned(
                //   bottom: constrains.maxHeight * 0.17,
                //   child: DoorLock(
                //     isLock: _controller.isTrunkLock,
                //     press: _controller.updateTrunkDoorLock,
                //   ),
                // ),
                // See how easy it is
              ],
            );
          },
        ),
      ),
    );
  }

}
