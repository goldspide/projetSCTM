import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:client/screens/create_client.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _size = const Size(120, 120);
    DateTime today = DateTime.now();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _size.height * 4.2,
              decoration: const BoxDecoration(color: AppColors.BackBlueColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Text('CALENDRIER 2023',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_drop_down,color: Colors.blue,),
                          ],
                        ),
                        Container(
                          height: _size.height * 0.25,
                          width: _size.width * 1.6,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding:
                                EdgeInsets.only(bottom: 8, left: 8, top: 6),
                            child: Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Text(
                                'Programmer un message',
                                style: TextStyle(color: Colors.white),
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
                  Container(
                    child: TableCalendar(
                      focusedDay: today,
                      firstDay: DateTime.utc(2023, 07, 27),
                      lastDay: DateTime.utc(2024, 01, 01),
                      rowHeight: 31,
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Container(
                    height: _size.height * 1.5,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10.0,bottom: 25.0,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 4.0 ,left: 4.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Samedi 1 Janvier 2023',
                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Fete du nouvelle ans',
                                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: AppColors.OrangColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 4.0 ,left: 4.0),
                              child: Text(
                                'With your agreement, we and our process personal data like your visit on this website, IP addresses and cookie identifiers. Some partners do not ask for your consent to process your data and rely on',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: _size.height * 1.8,
              width: _size.width * 10,
              decoration: const BoxDecoration(color: AppColors.BackOrangeColor),
              child: Column(
                children: [
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
                                children: [Icon(Icons.person), Text('  Nom')],
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
                                  Icon(Icons.hdr_weak_rounded),
                                  Text('  Sexe')
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
                                  Icon(Icons.folder),
                                  Text(' categorie')
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
                                children: [Icon(Icons.search), Text('  Ville')],
                              ),
                            ),
                          ),
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
            Container(
              height: _size.height * 2.4,
              width: _size.width * 3,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'orderd by Evenement',
                            style: GoogleFonts.ubuntu(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
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

                      const Text('<< 11 >>',style: TextStyle(fontSize: 18,color: Colors.blue),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 0),
                    height: _size.height * 0.2,
                    width: _size.width * 3,
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
                            'Evenement',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Date',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold,fontSize: 16)),
                          const SizedBox(
                            width: 0,
                          ),
                          Text('Etat envoie',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold,fontSize: 16)),
                        ],
                      ),
                    ),
                  ),

                  for(int i =0 ; i <= 4 ; i++ )
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 0),
                        height: _size.height * 0.2,
                        width: _size.width * 3,
                        decoration: BoxDecoration(
                            color: AppColors.BackOrangeColor,
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
                                'nouvelle ans',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.bold,fontSize: 16),
                              ),
                              Text('01-01-2023',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,fontSize: 16)),
                              const SizedBox(
                                width: 0,
                              ),
                              Text('ok',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,fontSize: 16)),
                              const SizedBox(
                                width: 0,
                              ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateClient()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
