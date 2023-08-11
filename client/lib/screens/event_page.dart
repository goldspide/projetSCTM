import 'package:client/screens/view.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final anneeController = TextEditingController();
  final trimestreController = TextEditingController();
  final semestreController = TextEditingController();
  final type_evenementeController = TextEditingController();
  final type_messageController = TextEditingController();
  final date_debutController = TextEditingController();
  final date_finController = TextEditingController();
  final etat_MessageController = TextEditingController();
  final event = [
    {
      'evenement': 'nouvel ans',
      'date': '01-01-2023',
      'date et heure d\' d\' envois': '01-01-2023 a 00h:00min',
      'etat': 'envoie',
      'etat message': 'sauvegarde',
      'type message': 'mail'
    },
    {
      'evenement': 'paque',
      'date': '31-03-2023',
      'date et heure d\' d\' envois': '31-03-2023 a 00h:00min',
      'etat': 'envoie',
      'etat message': 'sauvegarde',
      'type message': 'mail'
    },
    {
      'evenement': 'ramadan',
      'date': '08-05-2023',
      'date et heure d\' d\' envois': '08-05-2023 a 00h:00min',
      'etat': 'envoie',
      'etat message': 'brouillon',
      'type message': 'mail'
    },
    {
      'evenement': 'nouvel ans',
      'date': '01-01-2023',
      'date et heure d\' d\' envois': '01-01-2023 a 12h: 33min',
      'etat': 'envoie',
      'etat message': 'sauvegarde',
      'type message': 'mail'
    },
    {
      'evenement': 'nouvel ans',
      'date': '01-01-2023',
      'date et heure d\' d\' envois': '01-01-2023 a 12h: 33min',
      'etat': 'envoie',
      'etat message': 'sauvegarde',
      'type message': 'mail'
    },
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        locale: const Locale("en","US"));
    if (pickedDate != null){
      final formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
      setState(() {
        date_debutController.text = formattedDate;
        date_finController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _size = const Size(120, 120);
    DateTime today = DateTime.now();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _size.height * 3.99,
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
                            Text(
                              'CALENDRIER 2023',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.blue,
                            ),
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
                  Expanded(
                    child: Container(
                      height: _size.height * 1.5,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, bottom: 25.0, top: 20),
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
                                padding: EdgeInsets.only(top: 4.0, left: 4.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                        'Samedi 1 Janvier 2023',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Fete du nouvelle ans',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.OrangColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 4.0, left: 4.0),
                                child: Text(
                                  'With your agreement, we and our process personal data like your visit on this website, IP addresses and cookie identifiers. Some partners do not ask for your consent to process your data and rely on',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
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
                height: _size.height * 1.8,
                width: _size.width * 3.3,
                decoration: BoxDecoration(
                    color: AppColors.BackOrangeColor,
                    borderRadius: BorderRadius.circular(12)),
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
                              child: Center(
                                child: TextField(
                                  controller: semestreController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Semestre',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
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
                              child: Center(
                                child: TextField(
                                  controller: trimestreController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Trimestre',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
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
                              child: Center(
                                child: TextField(
                                  controller: type_evenementeController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Type evenement',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
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
                              child: Center(
                                child: TextField(
                                  controller: date_debutController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Date debut',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: TextField(
                                  controller: date_finController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Date fin',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
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
                              child: Center(
                                child: TextField(
                                  controller: etat_MessageController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Etat message',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
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
                      const Text(
                        '<< 11 >> ',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
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
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8.0, top: 2),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Evenement',
                            style: GoogleFonts.ubuntu(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Date',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          const SizedBox(
                            width: 0,
                          ),
                          Text('Etat envoie',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: _size.height * 1.6,
                    decoration: BoxDecoration(
                        color: AppColors.BackBlueColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: ListView.builder(
                        itemCount: event.length,
                        itemBuilder: (context, index) {
                          final val = event[index];
                          final events = val['evenement'];
                          final date = val['date'];
                          final date_e = val['date et heure d\' d\' envois'];
                          final etat = val['etat'];
                          final etat_message = val['etat message'];
                          final type_message = val['type message'];

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          // color: AppColors.BackBlueColor
                                        ),
                                        height: 340,
                                        width: 400,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Detaile sur l\'evenement $events',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0),
                                              child: Container(
                                                width: 360,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.transparent,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Evenement :   $events",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Date :   $date",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Date et heure d\'envoie :   $date_e",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Etat envoie:   $etat",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Etat message:   $etat_message",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Type message :   $type_message",
                                                      style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 30,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30.0),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 40,
                                                            width: 110,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50),
                                                                color:
                                                                    Colors.red),
                                                            child: const Center(
                                                                child: Text(
                                                              'Supprimer',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                          ),
                                                          const SizedBox(
                                                            width: 50,
                                                          ),
                                                          Container(
                                                            height: 40,
                                                            width: 110,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50),
                                                              color:
                                                                  Colors.green,
                                                            ),
                                                            child: const Center(
                                                                child: Text(
                                                              'Modifier',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
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
                                height: _size.height * 0.4,
                                width: _size.width * 1,
                                decoration: BoxDecoration(
                                    color: AppColors.BackOrangeColor,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 25.0, top: 12),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 12.0),
                                              child: Text(
                                                '$events',
                                                style: GoogleFonts.ubuntu(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 16),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // const SizedBox(
                                      //   width: 16,
                                      // ),
                                      Text('$date',
                                          style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16)),

                                      Text('$etat',
                                          style: GoogleFonts.ubuntu(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
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
            MaterialPageRoute(builder: (context) =>  EmailScheduler()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
