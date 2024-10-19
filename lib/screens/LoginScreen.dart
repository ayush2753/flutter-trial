import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swiftassign/common/commonssets.dart';
import 'package:swiftassign/common/commonstring.dart';
import 'package:swiftassign/common/commonwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(loginbg),fit: BoxFit.cover)
                  ),
                ),
              ),
              Positioned(
                  top: 71,
                  left: 32,
                  right: 32,
                  bottom: 71,
                  child:BlurryContainer(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    blur: 4,
                    color: Colors.white24,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(logo),
                          customheight(10),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text.rich(
                              TextSpan(
                                text: "Swift", // Line break after "Swift"
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "raleway",
                                  fontSize: 64,
                                  color: Colors.white,
                                  height: 1, // Adjust line height
                                ),
                                children: [
                                  WidgetSpan(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15), // Shift "Café" to the right by 20 pixels
                                      child: Text(
                                        "Café",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40,
                                          fontFamily: "raleway",
                                          color: Colors.white,
                                          height: 0.9, // Adjust line height for the second line
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center, // Center both text spans
                            ),
                          ),
                          customheight(10),
                          Text(latte,style: TextStyle(
                            color: Color(0xffABABAB),
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            shadows: [
                              Shadow(
                                offset: Offset(4.0, 4.0), // Shadow position
                                blurRadius: 20.0, // Shadow blur radius (20)
                                color: Colors.grey.withOpacity(0.7), // Shadow color
                              ),
                            ],
                          ),),
                          customheight(5),
                          const TextField(
                            decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Set border color to white when focused
                                ),

                                hintText: 'User Name',
                                hintStyle: TextStyle(
                                  color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "inter"
                                )
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                                disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white), // Set border color to white when focused
                                ),

                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "inter"
                                )
                            ),
                          ),
                          customheight(50),
                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            height: MediaQuery.of(context).size.height*0.06,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xff4D2B1A),
                                      Color(0xffA7745A)
                                    ]),
                                borderRadius: BorderRadius.circular(33)
                            ),
                            child: Center(child: Text(login,style: TextStyle(color: Colors.white,fontFamily: "inter",fontWeight: FontWeight.w400,fontSize: 20)),
                          ),
                          ),
                          customheight(25),
                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            height: MediaQuery.of(context).size.height*0.06,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(33)
                            ),
                            child: Center(child: Text(signup,style: TextStyle(color: Colors.white,fontFamily: "inter",fontWeight: FontWeight.w400,fontSize: 20)),
                            ),
                          ),
                          customheight(25),
                          Text(privacy,
                            style: TextStyle(color: Colors.white,fontFamily: "inter",fontWeight: FontWeight.w400,fontSize: 16),)

                        ],
                      ),
                    )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
