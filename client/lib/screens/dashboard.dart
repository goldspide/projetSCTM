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
import 'package:syncfusion_flutter_charts/charts.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late List<GDPData> _chartData;
  late List<GDPData> _chartData1;
  late List<GDPData> _chartData2;
  late List<GDPBarData> _chartBar;
  late TooltipBehavior _tooltipBehavior;
  @override
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  var currentPage = DrawerSections.dashboard;
  bool isVisible = true;
  bool isVisible1 = true;
  bool isVisible2 = true;
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chartData = getChartData();
    _chartData1 = getChartData1();
    _chartData2 = getChartData2();
    _chartBar = getChartBarData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    isPressed1 = true;
    isPressed2 = true;
    isPressed3 = true;
    isPressed4 = true;
    isVisible = true;
    isVisible1 = false;
    isVisible2 = false;
  }

  final clients = [
    {
      'evenement': 'fete du traveil',
      'date': '01-01-2023',
      'notification': 'bonne detef',
    },
    {
      'evenement': 'nouvelle ans',
      'date': '01-01-2023',
      'notification': 'paul',
    },
    {
      'evenement': 'tabaski',
      'date': '01-01-2023',
      'notification': 'paul',
    },
    {
      'evenement': 'noel',
      'date': '01-01-2023',
      'notification': 'paul',
    },
  ];

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
                          height: size.height * 0.489,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          isVisible1 = !isVisible1;
                                          isVisible = false;
                                          isVisible2 = false;
                                          isPressed = true;
                                          isPressed2 = true;
                                          isPressed1 = !isPressed1;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: isPressed1
                                              ? AppColors.BackOrangeColor
                                              : Colors.blue,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          minimumSize: const Size(90, 32)),
                                      child: const Text(
                                        'Homme',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          isVisible2 = !isVisible2;
                                          isVisible1 = false;
                                          isVisible = false;
                                          isPressed2 = !isPressed2;
                                          isPressed = true;
                                          isPressed1 = true;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: isPressed2
                                              ? AppColors.BackOrangeColor
                                              : Colors.blue,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          minimumSize: const Size(90, 32)),
                                      child: const Text(
                                        'Femme',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          isVisible = !isVisible;
                                          isVisible1 = false;
                                          isVisible2 = false;
                                          isPressed1 = true;
                                          isPressed = !isPressed;
                                          isPressed2 = true;
                                        });
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: isPressed
                                              ? AppColors.BackOrangeColor
                                              : Colors.blue,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(16))),
                                          minimumSize: const Size(90, 32)),
                                      child: const Text(
                                        'Tous',
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                              Stack(
                                children: [
                                  Visibility(
                                    visible: isVisible,
                                    child: SfCircularChart(
                                      borderWidth: 2,
                                      legend: const Legend(
                                          isVisible: true,
                                          overflowMode:
                                              LegendItemOverflowMode.wrap),
                                      tooltipBehavior: _tooltipBehavior,
                                      series: <CircularSeries>[
                                        PieSeries<GDPData, String>(
                                          dataSource: _chartData,
                                          xValueMapper: (GDPData data, _) =>
                                              data.continent,
                                          yValueMapper: (GDPData data, _) =>
                                              data.gdp,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                  isVisible: true),
                                          enableTooltip: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible1,
                                    child: SfCircularChart(
                                      borderWidth: 2,
                                      legend: const Legend(
                                          isVisible: true,
                                          overflowMode:
                                              LegendItemOverflowMode.wrap),
                                      tooltipBehavior: _tooltipBehavior,
                                      series: <CircularSeries>[
                                        PieSeries<GDPData, String>(
                                          dataSource: _chartData1,
                                          xValueMapper: (GDPData data, _) =>
                                              data.continent,
                                          yValueMapper: (GDPData data, _) =>
                                              data.gdp,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                  isVisible: true),
                                          enableTooltip: true,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: isVisible2,
                                    child: SfCircularChart(
                                      borderWidth: 2,
                                      legend: const Legend(
                                          isVisible: true,
                                          overflowMode:
                                              LegendItemOverflowMode.wrap),
                                      tooltipBehavior: _tooltipBehavior,
                                      series: <CircularSeries>[
                                        PieSeries<GDPData, String>(

                                          dataSource: _chartData2,
                                          xValueMapper: (GDPData data, _) =>
                                              data.continent,
                                          yValueMapper: (GDPData data, _) =>
                                              data.gdp,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                  isVisible: true),
                                          enableTooltip: true,
                                        ),
                                      ],
                                    ),
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
                          height: size.height * 0.5,
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
                                    ),
                                  ],
                                ),
                              ),

                              SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                            isPressed4 = true;
                                            isPressed3 = !isPressed3;
                                            isPressed5 = true;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: isPressed3
                                                ? AppColors.BackOrangeColor
                                                : Colors.blue,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16))),
                                            minimumSize: const Size(90, 32)),
                                        child: const Text(
                                          'Semestres',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                            isPressed5 = true;
                                            isPressed3 = true;
                                            isPressed4 = !isPressed4;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: isPressed4
                                                ? AppColors.BackOrangeColor
                                                : Colors.blue,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16))),
                                            minimumSize: const Size(90, 32)),
                                        child: const Text(
                                          'Trimestre',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                            isPressed5 = !isPressed5;
                                            isPressed4 = true;
                                            isPressed3 = true;
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: isPressed5
                                                ? AppColors.BackOrangeColor
                                                : Colors.blue,
                                            shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16))),
                                            minimumSize: const Size(90, 32)),
                                        child: const Text(
                                          'Mois',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ],
                                ),
                              ),
                              // Expanded(
                              //     child: Container(
                              //   color: Colors.yellow,
                              // ))
                              Visibility(
                                  visible: isVisible,
                                  child: SfCartesianChart(
                                    // legend: const Legend(isVisible: true,overflowMode: LegendItemOverflowMode.wrap),
                                    tooltipBehavior: _tooltipBehavior,
                                    primaryXAxis: CategoryAxis(),
                                    series: <CartesianSeries>[
                                      ColumnSeries<GDPBarData, String>(
                                        dataLabelSettings: const DataLabelSettings(isVisible: true),
                                          enableTooltip: true,
                                          dataSource: _chartBar,
                                          xValueMapper: (GDPBarData data, _) =>
                                              data.month,
                                          yValueMapper: (GDPBarData data, _) =>
                                              data.Homme),

                                      ColumnSeries<GDPBarData, String>(
                                          dataLabelSettings: const DataLabelSettings(isVisible: true,),
                                          color: AppColors.BackOrangeColor,
                                          dataSource: _chartBar,
                                          xValueMapper: (GDPBarData data, _) =>
                                          data.month,
                                          yValueMapper: (GDPBarData data, _) =>
                                          data.Femme),


                                    ],
                                  )),
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
                          height: size.height * 0.45,
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
                                      'EVENEMENTS DU MOIS',
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
                              Container(
                                height: _size.height * 2.1,
                                decoration: const BoxDecoration(
                                    color: AppColors.BackBlueColor),
                                child: ListView.builder(
                                    itemCount: clients.length,
                                    itemBuilder: (context, index) {
                                      final val = clients[index];
                                      final client = val['evenement'];
                                      final date = val['date'];

                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return SizedBox(
                                                    height: 400,
                                                    child: Column(
                                                      children: [
                                                        const Text("Nom"),
                                                        Text('$client'),
                                                        const Text(
                                                            'Date de naissance'),
                                                        Text('$date')
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Container(
                                            height: size.height * 0.05,
                                            width: size.width * 1,
                                            decoration: BoxDecoration(
                                                color:
                                                    AppColors.BackOrangeColor,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 25.0,
                                                  top: 2),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 2.0),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          '$date',
                                                          style: GoogleFonts
                                                              .ubuntu(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize: 18),
                                                        ),
                                                        const SizedBox(
                                                          width: 40,
                                                        ),
                                                        Text('$client',
                                                            style: GoogleFonts.ubuntu(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 18)),
                                                      ],
                                                    ),
                                                  ),
                                                  // const SizedBox(
                                                  //   width: 5,
                                                  // ),

                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                          Icons.menu))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
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

  // @override
  // Widget build(BuildContext context){
  //   return SafeArea(child: Scaffold(body: SfCircularChart(),));
  // }
  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Homme Actif', 25),
      GDPData('Femme Actif', 60),
    ];
    return chartData;
  }

  List<GDPData> getChartData1() {
    final List<GDPData> chartData = [
      GDPData('Homme Actif', 36),
      GDPData('Homme Total', 60),
    ];
    return chartData;
  }

  List<GDPData> getChartData2() {
    final List<GDPData> chartData = [
      GDPData('Femme Actif', 50),
      GDPData('Femme Total', 60),
    ];
    return chartData;
  }

  List<GDPBarData> getChartBarData() {
    final List<GDPBarData> barData = [
      GDPBarData('Jan', 25, 70),
      GDPBarData('Feb', 56, 40),
      GDPBarData('Mar', 41, 30),
      GDPBarData('Avr', 66, 22),
      GDPBarData('Mai', 35, 56),
      GDPBarData('Jun', 45, 25),
      GDPBarData('Jul', 12, 41),
      GDPBarData('Aou', 26, 25),
      GDPBarData('Sep', 46, 36),
      GDPBarData('Oct', 35, 56),
      GDPBarData('Nov', 22, 62),
      GDPBarData('Dec', 58, 13),
    ];
    return barData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}

class GDPBarData {
  GDPBarData(this.month, this.Homme, this.Femme);
  final String month;
  final double Homme;
  final double Femme;
}

enum DrawerSections { dashboard, client, evenement, journal, agence }
