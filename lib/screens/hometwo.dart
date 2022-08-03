import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_animated_app/constanins.dart';
import 'package:tesla_animated_app/home_controller.dart';
import 'package:tesla_animated_app/screens/hometwocontroller.dart';

import 'components/cooltemp.dart';
import 'components/door_lock.dart';
import 'components/tesla_bottom_navigationbar.dart';


class HomeTwoScreen extends StatelessWidget {
  HomeTwoScreen({Key? key}) : super(key: key);

  final HomeTwoController _controller = HomeTwoController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Scaffold(
            // bottomNavigationBar: TeslaBottomNavigationBar(
            //   onTap: (index) {},
            //   selectedTab: 1,
            // ),
            body: SafeArea(
              child: LayoutBuilder(
                builder: (context, constrains) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: constrains.maxHeight * 0.1),
                      //  child:
                        // SvgPicture.asset(
                        //   "assets/icons/Car.svg",
                        //   width: double.infinity,
                        // ),
                      ),
                      // Positioned(
                      //   top: constrains.maxHeight * 0.06,
                      //   child:   Container(
                      //
                      //     child: Text(
                      //       "By default, climate control is set to Auto, which maintains optimum comfort in all but the most severe weather conditions. ",
                      //       maxLines: 5,
                      //       style: TextStyle(
                      //           fontSize: 6,
                      //
                      //           // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                      //           color: Colors.white, //font color
                      //           backgroundColor: Colors.black12, //background color
                      //           letterSpacing: 0, //letter spacing//decoration 'underline' thickness
                      //           fontStyle: FontStyle.italic
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Image.asset(
                        "assets/icons/ccr.jpg",
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Positioned(
                        top: constrains.maxHeight * 0.06,
                        child:   Container(
                          width: 300.0,
                          child: Text(
                            "Adjust your climate preferences, such as turning on the seat heater changing the cabin temperature, hands-free by using voice commands",
                            style: TextStyle(
                                fontSize: 12,
                                // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                                color: Colors.white, //font color
                                backgroundColor: Colors.black12, //background color
                                letterSpacing: 0, //letter spacing//decoration 'underline' thickness
                                fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: constrains.maxHeight * 0.17,
                        child:  SvgPicture.asset(
                               "assets/icons/Temp.svg",
                               width: double.infinity,
                              height: 50,
                                ),),
                      // Positioned(
                      //   top: constrains.maxHeight * 0.06,
                      //   child:   Text(
                      //     "Enabling Controls > Locks > Driver Door Unlock Mode only unlocks the driver door when you first unlock Model Y.",
                      //     style: TextStyle(
                      //         fontSize: 14,
                      //         // height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                      //         color: Colors.white, //font color
                      //         backgroundColor: Colors.black12, //background color
                      //         letterSpacing: 0, //letter spacing//decoration 'underline' thickness
                      //         fontStyle: FontStyle.italic
                      //     ),
                      //   ),
                      // ),
                      // Door Locks
                      Positioned(
                        right: constrains.maxWidth * 0.001,
                        child: tempp(
                          isLock: _controller.iscool,
                          press: _controller.updatecool,
                        ),
                      ),
                      // Positioned(
                      //   left: constrains.maxWidth * 0.05,
                      //   child: tempp(
                      //     isLock: _controller.isLeftDoorLock,
                      //     press: _controller.updateLeftDoorLock,
                      //   ),
                      // ),
                      // Positioned(
                      //   top: constrains.maxHeight * 0.13,
                      //   child: tempp(
                      //     isLock: _controller.isBonnetLock,
                      //     press: _controller.updateBonnetDoorLock,
                      //   ),
                      // ),
                      // Positioned(
                      //   bottom: constrains.maxHeight * 0.17,
                      //   child: tempp(
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
        });
  }
}
