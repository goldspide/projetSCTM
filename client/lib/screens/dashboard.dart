import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:client/screens/agent_page.dart';
import 'package:client/screens/client_page.dart';
import 'package:client/screens/event_page.dart';
import 'package:client/screens/my_drawer_header.dart';
import 'package:client/screens/news_page.dart';
import 'package:client/utils/colors.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  var currentPage = DrawerSections.dashboard;

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final _size = Size(120, 120);
    return Scaffold(
        key: _globalKey,
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
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DashBoard',
                          style: GoogleFonts.ubuntu(
                              color: Colors.blueAccent,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Welcome back, hammel',
                          style: GoogleFonts.ubuntu(
                              color: Colors.black, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: size.height * 0.24,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.BackBlueColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.0, left: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Client 2023',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    // const SizedBox(
                                    //   width: 1,
                                    // ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  AnimatedCircularChart(
                                    size: _size,
                                    initialChartData: const <CircularStackEntry>[
                                      CircularStackEntry(
                                        <CircularSegmentEntry>[
                                          CircularSegmentEntry(
                                              20.00, AppColors.OrangColor,
                                              rankKey: 'completed'),
                                          CircularSegmentEntry(
                                              80.00, AppColors.BlueColor,
                                              rankKey: 'Remaining'),
                                        ],
                                        rankKey: 'progress',
                                      ),
                                    ],
                                    chartType: CircularChartType.Radial,
                                    percentageValues: true,
                                    holeLabel: '  200 \nTotal',
                                    labelStyle: GoogleFonts.ubuntu(
                                      color: AppColors.OrangColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10.0, left: 8.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: AppColors.OrangColor),
                                            ),
                                            const Text(
                                                '  Nombre D\'Homme Actif  120'),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10.0, left: 8.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  color: AppColors.BlueColor),
                                            ),
                                            const Text(
                                                '  Nombre De Femme Actif 120'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: size.height * 0.24,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.BackBlueColor),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2.0, left: 12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Message-Mail 2023',
                                        style: GoogleFonts.ubuntu(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      // const SizedBox(
                                      //   width: 1,
                                      // ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '14 522 000',
                                            style: GoogleFonts.ubuntu(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          const Text('Message Envoye'),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          Text('14 522 000',
                                              style: GoogleFonts.ubuntu(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16)),
                                          const Text('Message Non Envoye'),
                                        ],
                                      )),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.transparent,
                                      child: Center(
                                        child: Column(children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: const Icon(
                                                    Icons.arrow_upward,
                                                    color: Colors.white,
                                                    weight: 16),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              const Text('75%'),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: const Icon(
                                                    Icons.arrow_downward,
                                                    color: Colors.white,
                                                    weight: 16),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              const Text('25%'),
                                            ],
                                          ),
                                        ]),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: size.height * 0.24,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.BackBlueColor),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.0, left: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Anniversaire    2023',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    // const SizedBox(
                                    //   width: 1,
                                    // ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: size.height * 0.6,
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.BackOrangeColor),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2.0, left: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'EVENEMENTS DU MOIS- SEPTEMBRE',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    // const SizedBox(
                                    //   width: 1,
                                    // ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, top: 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Total:  ',
                                      style: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '25',
                                      style: GoogleFonts.ubuntu(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  margin: const EdgeInsets.only(left: 0),
                                  height: size.height * 0.03,
                                  width: size.width * 1,
                                  decoration: BoxDecoration(
                                      color: AppColors.BackBlueColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0, top: 2),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Date',
                                          style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        Text('Evenement',
                                            style: GoogleFonts.ubuntu(
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          width: 0,
                                        ),
                                        Text('Notification',
                                            style: GoogleFonts.ubuntu(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              for (int i = 0; i <= 7; i++)
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 0),
                                    height: size.height * 0.03,
                                    width: size.width * 1,
                                    decoration: BoxDecoration(
                                        color: AppColors.BackBlueColor,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8.0, top: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '02/05/23',
                                            style: GoogleFonts.ubuntu(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 0,
                                          ),
                                          Text('Anniversaire',
                                              style: GoogleFonts.ubuntu(
                                                  fontWeight: FontWeight.bold)),
                                          const SizedBox(
                                            width: 24,
                                          ),
                                          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )),
          ],
        ));
  }

  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const DashBoard(),
                ),
              );
            },
            child: menuItem(1, 'DashBoard', Icons.dashboard,
                currentPage == DrawerSections.dashboard ? true : false),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const ClientPage(),
                ),
              );
            },
            child: menuItem(2, 'Client', Icons.person_2_outlined,
                currentPage == DrawerSections.client ? true : false),
          ),
          InkWell(
            onTap: () {},
            child: menuItem(3, 'Evenement', Icons.event_available,
                currentPage == DrawerSections.evenement ? true : false),
          ),
          InkWell(
            onTap: () {},
            child: menuItem(4, 'Journal', Icons.newspaper,
                currentPage == DrawerSections.journal ? true : false),
          ),
          InkWell(
            onTap: () {},
            child: menuItem(5, 'Agence', Icons.settings,
                currentPage == DrawerSections.agence ? true : false),
          )
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
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const DashBoard(),
                ),
              );
            } else if (id == 2) {
              currentPage = DrawerSections.client;
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const ClientPage(),
                ),
              );
            } else if (id == 3) {
              currentPage = DrawerSections.evenement;
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const EventPage(),
                ),
              );
            } else if (id == 4) {
              currentPage = DrawerSections.journal;
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const NewsPage(),
                ),
              );
            } else if (id == 5) {
              currentPage = DrawerSections.agence;
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const AgentPage(),
                ),
              );
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
