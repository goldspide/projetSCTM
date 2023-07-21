// import 'dart:html';

import 'package:client/screens/agent_page.dart';
import 'package:client/screens/client_page.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/screens/event_page.dart';
import 'package:client/screens/my_drawer_header.dart';
import 'package:client/screens/news_page.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = const DashBoard();
    } else if (currentPage == DrawerSections.client) {
      container = const ClientPage();
    } else if (currentPage == DrawerSections.evenement) {
      container = const EventPage();
    } else if (currentPage == DrawerSections.journal) {
      container = const NewsPage();
    } else if (currentPage == DrawerSections.agence) {
      container = const AgentPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Welcome'),
        centerTitle: true,
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          )),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, 'DashBoard', Icons.dashboard,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, 'Client', Icons.person_2_outlined,
              currentPage == DrawerSections.client ? true : false),
          menuItem(3, 'Evenement', Icons.event_available,
              currentPage == DrawerSections.evenement ? true : false),
          menuItem(4, 'Journal', Icons.newspaper,
              currentPage == DrawerSections.journal ? true : false),
          menuItem(5, 'Agence', Icons.settings,
              currentPage == DrawerSections.agence ? true : false)
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.blue : Colors.white,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.client;
            } else if (id == 3) {
              currentPage = DrawerSections.evenement;
            } else if (id == 4) {
              currentPage = DrawerSections.journal;
            } else if (id == 5) {
              currentPage = DrawerSections.agence;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(children: [
            Expanded(
                child: Icon(
              icon,
              size: 20,
              color: Colors.black,
            )),
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ))
          ]),
        ),
      ),
    );
  }
}

enum DrawerSections { dashboard, client, evenement, journal, agence }
