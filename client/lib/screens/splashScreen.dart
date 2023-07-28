import 'package:client/screens/loginScreen.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackBlueColor,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
          Container(

            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.only(top: 20.0),
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/logo.jpg'),fit: BoxFit.contain,),
              color: AppColors.BackBlueColor,
            ),
          ),
              // Center(
              //   child: Image.asset(
              //     "assets/images/logo.jpg",
              //     width: 120,
              //     height: 120,
              //     color: Colors.cyan,
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              // const SpinKitSpinningLines(
              //   color: Colors.cyan,
              //   size: 50.0,
              // ),
              const SizedBox(
                height: 10,
              ),

              Container(
                padding: const EdgeInsets.only(top: 270),
                child: const Text(" Fabrication bouteilles de gaz, tout \n emboutissage, distribution gaz domestique,\n equipement metallique",style: TextStyle(fontWeight: FontWeight.bold,),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
