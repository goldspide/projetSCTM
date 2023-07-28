import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      decoration: const BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/images/logo.jpg'),fit: BoxFit.contain,),
        color: AppColors.BackBlueColor,
      ),
    );
  }
}
