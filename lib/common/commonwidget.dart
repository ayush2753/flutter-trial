import 'package:flutter/material.dart';

Widget customheight (double h)
{
  return SizedBox(
    height: h,
  );
}
Widget customWidth (double w)
{
  return SizedBox(
    width: w,
  );
}
Widget customRadio(bool _isLatteSelected, String radiotext, Function(bool) onChanged) {
  return Row(
    children: [
      Transform.scale(
        scaleY: 0.5,
        scaleX: 0.5,
        child: Switch(
          value: _isLatteSelected,
          onChanged: onChanged, // Pass the onChanged callback
          activeColor: Colors.white,
          activeTrackColor: Colors.green,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.white30,
        ),
      ),
      Text(
        radiotext,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    ],
  );
}
Widget cupfill(context, amount,bgcolor,cupsizecolor){
  return Container(
    height: MediaQuery.of(context).size.height*0.03,
    width: MediaQuery.of(context).size.width*0.15,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xff8391A1),width: 1.5),
        color: Color(bgcolor)
    ),
    child: Text(amount,textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Color(cupsizecolor),fontFamily: "inter"),),
  );
}