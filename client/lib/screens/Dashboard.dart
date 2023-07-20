import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: 288,
        height: double.infinity,
        color: const Color(0xFF17203A),
        child: SafeArea(
            child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              width: 288,
              height: 150,
            ),
            Column(
              children: [
                ListTile(
                  onTap: () {},
                  leading: const SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.dashboard_sharp,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Dashboard',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.person_outline_sharp,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Client',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.event_available_outlined,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Evenement',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Journal',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Agence',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        )),
      )),
    );
  }
}
