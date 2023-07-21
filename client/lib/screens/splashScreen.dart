import 'package:client/screens/loginScreen.dart';
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
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Image.asset(
                  "assets/images/logo.jpg",
                  width: 120,
                  height: 120,
                  color: Colors.cyan,
                ),
              ),
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
                child: const Text(" App version 1.0 Experimental"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
