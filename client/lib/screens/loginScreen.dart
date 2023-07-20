import 'package:client/screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: DrawClip2(),
                child: Container(
                  width: size.width,
                  height: size.height * 0.8,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffa58fd2), Color(0xffddc3fc)],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight)),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  width: size.width,
                  height: size.height * 0.8,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffddc3fc), Color(0xff91c5fc)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    input('Entrez votre email', false),
                    input('Entre votre mot de passe', true),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (
                              _,
                              __,
                              ___,
                            ) =>
                                    const DashBoard()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40),
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff6a74ce),
                              borderRadius: BorderRadius.circular(30)),
                          height: 50,
                          child: Center(
                              child: Text(
                            'Login',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    Text(
                      'Mot de passe oublie ?',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }

  Widget input(String hint, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.ubuntu(color: Colors.grey),
              contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
              prefixIcon: pass
                  ? const Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.green,
                    ),
              suffixIcon: pass
                  ? null
                  : const Icon(Icons.assignment_turned_in_rounded,
                      color: Colors.greenAccent),
              border: const UnderlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
