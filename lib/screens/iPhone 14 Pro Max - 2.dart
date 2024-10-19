import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:swiftassign/common/commonssets.dart';
import 'package:swiftassign/common/commonstring.dart';
import 'package:swiftassign/common/commonwidget.dart';

class Subscreen extends StatefulWidget {
  const Subscreen({super.key});

  @override
  State<Subscreen> createState() => _SubscreenState();
}

class _SubscreenState extends State<Subscreen> {
  // State variable to track switch state
  bool _isLatteSelected = false;
  bool _isChecked = false;

  void _toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update state
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Coffee image container at the top
          Container(
            height: MediaQuery.of(context).size.height * 0.4, // Flexible height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(coffee),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Main content container without fixed height
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(loginbg),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Latte selection
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Lattè",
                        style: TextStyle(
                          fontFamily: "inter",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.2,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xffD9D9D9),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF9B9B9B),
                              ),
                            ),
                            Container(
                              width: 1.5,
                              height: 25,
                              color: Color(0xFF9B9B9B),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF9B9B9B),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Rating row
                  const Row(
                    children: [
                      Text(
                        "4.9",
                        style: TextStyle(
                          color: Color(0XFFC4C4C4),
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow,
                        size: 12,
                      ),
                      Text(
                        "(486)",
                        style: TextStyle(
                          color: Color(0XFFC4C4C4),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  customheight(20),
                  // Latte description
                  Text(
                    lattedescription,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xffC0C0C0),
                    ),
                  ),
                  customheight(20),
                  // Choice text
                  Text(
                    choice,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffCDCDCD),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  customheight(10),
                  // Cup fill options
                  Row(
                    children: [
                      cupfill(context,"Full", 0xff37AD54, 0xffD9D9D9),
                      customWidth(10),
                      cupfill(context, "1/2 Full", 0xffD9D9D9, 0xff000000),
                      customWidth(10),
                      cupfill(context, "3/4 Full", 0xffD9D9D9, 0xff000000),
                      customWidth(10),
                      cupfill(context, "1/4 Full", 0xffD9D9D9, 0xff000000),
                    ],
                  ),
                  customheight(20),
                  // Milk choice text
                  const Text(
                    "Choice of Milk",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffCDCDCD),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  customheight(10),
                  // Milk choice options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customRadio(_isLatteSelected, "Skim Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                      customRadio(_isLatteSelected, "Full Cream Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customRadio(_isLatteSelected, "Almond Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                      customRadio(_isLatteSelected, "Full Cream Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      customRadio(_isLatteSelected, "Soy Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                      customWidth(45),
                      customRadio(_isLatteSelected, "Oat Milk", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                    ],
                  ),
                  customRadio(_isLatteSelected, "Lactose Free \nMilk", (bool newValue) {
                    setState(() {
                      _isLatteSelected = newValue;
                    });
                  }),
                  customheight(20),
                  Text(
                    "Choice of Sugar",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xffCDCDCD),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  customheight(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customRadio(_isLatteSelected, "Sugar X1", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                      customRadio(_isLatteSelected, "Sugar X2", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customRadio(_isLatteSelected, "½ Sugar", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                      customWidth(45),
                      customRadio(_isLatteSelected, "No Sugar", (bool newValue) {
                        setState(() {
                          _isLatteSelected = newValue;
                        });
                      }),
                    ],
                  ),
                  customheight(20),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xff333333).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: _toggleCheckbox,activeColor: Colors.cyan,
                          ),
                          Row(
                            children: [
                              Text("High Priority",style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xffCDCDCD),
                              fontWeight: FontWeight.w300, fontFamily: "inter"
                              ),),
                              Container(height: 25,width: 25,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(warn))),)
                            ],
                          ),
                          cupfill(context, "Submit", 0xff37ad54, 0xffFFFFFF)

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
