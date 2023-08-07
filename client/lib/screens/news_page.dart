import 'package:client/screens/create_agence.dart';
import 'package:client/screens/create_news.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final news = [
    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envoie' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },

    {
      'Type de message' : ' Evenement',
      'date de creation' : ' 01-01-2023',
      'date et heure d\' envois' : '01-01-2024',
      'etat envoie' : 'Echec',
      'type de message': 'mail',
      'message' : 'Bonne fete ____'
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                    'Gestion Du Journal',
                    style: GoogleFonts.ubuntu(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    color: AppColors.BackOrangeColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text('  Annee')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(width: 2,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text('  Trimestre')
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                      Text('  Type evenement')
                                    ],
                                  ),
                                ),
                              ),
                            )
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
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text('  Semestre')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(width: 2,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 120,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text('  Date fin')
                                    ],
                                  ),
                                ),
                              ),
                            )
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
                                      Icon(Icons.calendar_month),
                                      Text('  Type de message')
                                    ],
                                  ),
                                ),
                              ),
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
                                      Text('  Etat Message')
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 45,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)),
                          child:  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('RECHERCHE',style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                              Row(
                                children: [
                                  Text('Total:',style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blue),),
                                  const SizedBox(width: 8,),
                                  Text('14 500 000',style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                                ],
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                '14 522 000',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                             const  Text('Message Envoye'),
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
              ),
              const SizedBox(height: 10,),
              Container(
                height: size.height * 0.12,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 2.0, left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'ordered by Evenement',
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
                          Text('<<11>>', style: GoogleFonts.ubuntu(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),)
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
                              left: 8.0, right: 8.0, top: 2),
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.stretch,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Type de message',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,
                                fontSize: 18),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Text('Date d\' envoie',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                  fontSize: 18)),
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
                  height: size.height * 0.3,
                  decoration:  BoxDecoration(
                    color: AppColors.BackBlueColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        final val = news[index];
                        final type_me = val['Type de message'];
                        final date_c = val['date de creation'];
                        final date_h = val['date et heure d\' envois'];
                        final etat = val['etat envoie'];
                        final type_mes = val['type de message'];
                        final message = val['message'];

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
                                            'Detaile sur l\'evenement $type_me',
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
                                                    "Type de message :   $type_me",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Date de creation:   $date_c",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Date d\'envoie:   $date_h",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Etat :   $etat",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Type de message :   $type_mes",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    "Message :   $message",
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
                                                                        .bold,color: Colors.white),
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
                                                                        .bold,color: Colors.white),
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
                                            '$type_me',
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
                                    Text('$date_c',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateNews()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



