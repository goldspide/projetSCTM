import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:client/screens/create_client.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  final clients = [
    {
      'nom': 'paul',
      'prenom': 'paul',
      'sexe': 'paul',
      'quartier': 'paul',
      'ville': 'paul',
      'date_de_naissance': '01-01-2023'
    },
    {
      'nom': 'paul',
      'prenom': 'paul',
      'sexe': 'paul',
      'quartier': 'paul',
      'ville': 'paul',
      'date_de_naissance': '01-01-2023'
    },
    {
      'nom': 'paul',
      'prenom': 'paul',
      'sexe': 'paul',
      'quartier': 'paul',
      'ville': 'paul',
      'date_de_naissance': '01-01-2023'
    },
    {
      'nom': 'paul',
      'prenom': 'paul',
      'sexe': 'paul',
      'quartier': 'paul',
      'ville': 'paul',
      'date_de_naissance': '01-01-2023'
    },
    {
      'nom': 'paul',
      'prenom': 'paul',
      'sexe': 'paul',
      'quartier': 'paul',
      'ville': 'paul',
      'date_de_naissance': '01-01-2023'
    }
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final _size = Size(120, 120);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 8),
              child: Container(
                // color: Colors.yellow,
                width: size.width,
                child: Text(
                  'Gestion Des Client',
                  style: GoogleFonts.ubuntu(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              height: size.height * 0.3 ,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                  color: AppColors.BackOrangeColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 155,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [Icon(Icons.person), Text('  Nom')],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          // const SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 155,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.hdr_weak_rounded),
                                    Text('  Sexe')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.calendar_month),
                                    Text('  Date Debut')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          // const SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.calendar_month),
                                    Text(' Date fin')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.search),
                                    Text('  Ville')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          // const SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.search),
                                    Text('  Region')
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.folder),
                                    Text('  Categorie')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          // const SizedBox(width: 2,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, top: 12, bottom: 12),
                            child: Container(
                              height: 45,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'RECHERCHE',
                                      style: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: size.height * 0.28,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.BackBlueColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 12),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              AppColors.BackOrangeColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16))),
                              minimumSize:const  Size(90, 32)),
                          child: const Text(
                            'Homme',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              AppColors.BackOrangeColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16))),
                              minimumSize:const  Size(90, 32)),
                          child: const Text(
                            'Femme',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              AppColors.BackOrangeColor,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(16))),
                              minimumSize:const  Size(90, 32)),
                          child: const Text(
                            'Tous',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      AnimatedCircularChart(
                        size: _size,
                        initialChartData: const <CircularStackEntry>[
                          CircularStackEntry(
                            <CircularSegmentEntry>[
                              CircularSegmentEntry(20.00, AppColors.OrangColor,
                                  rankKey: 'completed'),
                              CircularSegmentEntry(80.00, AppColors.BlueColor,
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
                            padding:
                                const EdgeInsets.only(bottom: 10.0, left: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.OrangColor),
                                ),
                                const Text('  Nombre D\'Homme Actif  120'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, left: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: AppColors.BlueColor),
                                ),
                                const Text('  Nombre De Femme Actif 120'),
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
              height: size.height * 0.12,
              width: size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Filter by Code',
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
                        const SizedBox(width: 80),
                        Text(
                          '<<11>>',
                          style: GoogleFonts.ubuntu(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 30.0, top: 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Client',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text('Date de naissance',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            // Text('Description',
                            //     style: GoogleFonts.ubuntu(
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: _size.height * 2.4,
                decoration:  BoxDecoration(
                  color: AppColors.BackBlueColor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: ListView.builder(
                    itemCount: clients.length,
                    itemBuilder: (context, index) {
                      final val = clients[index];
                      final client = val['nom'];
                      final prenom = val['prenom'];
                      final sexe = val['sexe'];
                      final quartier = val['quartier'];
                      final ville = val['ville'];
                      final date = val['date_de_naissance'];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      // color: AppColors.BackBlueColor
                                    ),
                                    height: 320,
                                    width: 400,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Detaile du client $client',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15.0),
                                          child: Container(
                                            width: 360,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            alignment: Alignment.topLeft,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Nom :   $client",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "prenom :   $prenom",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Sexe :   $sexe",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Date de naissance :   $date",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Quartier :   $quartier",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "Ville :   $ville",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30.0),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 110,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(50),
                                                            color: Colors.red),
                                                        child: const Center(
                                                            child: Text(
                                                          'Supprimer',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                      ),
                                                      const SizedBox(
                                                        width: 50,
                                                      ),
                                                      Container(
                                                        height: 40,
                                                        width: 110,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          color: Colors.green,
                                                        ),
                                                        child: const Center(
                                                            child: Text(
                                                          'Modifier',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                showDragHandle: true,
                                enableDrag: true,
                                backgroundColor: AppColors.BackBlueColor);
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 1,
                            decoration: BoxDecoration(
                                color: AppColors.BackOrangeColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 25.0, top: 12),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          '$client',
                                          style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text('$date',
                                      style: GoogleFonts.ubuntu(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.call,
        animatedIcon: AnimatedIcons.menu_close,
        overlayColor: AppColors.BackOrangeColor,
        spaceBetweenChildren: 12,
        spacing: 12,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.add),
              backgroundColor: Colors.white,
              onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const CreateClient()),
                  ),
              onLongPress: () => print('very cool'),
              label: 'Ajouter'),
          SpeedDialChild(
              child: const Icon(Icons.mode),
              backgroundColor: Colors.blue,
              label: 'Modifier',
              onTap: () => Fluttertoast.showToast(
                  msg: 'cool...',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 6,
                  backgroundColor: Colors.greenAccent,
                  textColor: Colors.black,
                  fontSize: 16),
              onLongPress: () => print('Modifier un client')),
          SpeedDialChild(
            child: const Icon(Icons.delete),
            backgroundColor: Colors.red,
            onTap: () => print('cool'),
            onLongPress: () => print('very cool'),
            label: 'Supprimer',
          )
        ],
      ),
    );
  }
}
