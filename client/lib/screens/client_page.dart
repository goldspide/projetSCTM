import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:client/screens/create_client.dart';
import 'package:client/screens/dashboard.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';


class ClientPage extends StatefulWidget {
  const ClientPage({super.key});

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  late TooltipBehavior _tooltipBehavior;
  late List<GDPData> _chartData;
  late List<GDPData> _chartData1;
  late List<GDPData> _chartData2;
  final nameController = TextEditingController();
  final categorieController = TextEditingController();
  final emailController = TextEditingController();
  final sexeController = TextEditingController();
  final datedenaissanceController = TextEditingController();
  final quartierController = TextEditingController();
  final villeController = TextEditingController();

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
        datedenaissanceController.text = formattedDate;
      });
    }
  }


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
  bool isVisible = true;
  bool isVisible1 = true;
  bool isVisible2 = true;
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chartData = getChartData();
    _chartData1 = getChartData1();
    _chartData2 = getChartData2();
    isPressed1 = true;
    isPressed2 = true;
    isVisible = true;
    isVisible1 = false;
    isVisible2 = false;
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

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
                height: size.height * 0.4,
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
                                child: Center(
                                  child: TextField(
                                    controller: nameController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Nom',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.person,
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
                                child: Center(
                                  child: TextField(
                                    controller: sexeController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Sexe',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.hdr_weak_rounded,
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
                                    controller: datedenaissanceController,
                                    decoration:  InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'date de naissance',
                                      hintStyle: const TextStyle(color: Colors.black),
                                      prefixIcon: IconButton(onPressed: () => _selectDate(context), icon: const Icon(Icons.calendar_month,color: Colors.black,) ),
                                      contentPadding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 12),
                                    ),
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
                                child: Center(
                                  child: TextField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.mail,
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
                                    controller: villeController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Ville',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.location_city,
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
                                child: Center(
                                  child: TextField(
                                    controller: quartierController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Quartier',
                                      hintStyle: TextStyle(color: Colors.black),
                                      prefixIcon: Icon(
                                        Icons.add_location,
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
                                child: TextField(
                                  controller: categorieController,
                                  decoration:  const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Categorie',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(Icons.folder,color: Colors.black,),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 12),
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
                              child: GestureDetector(
                                onTap: () { print('object');},
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
                height: size.height * 0.53,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
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
                                overflowMode: LegendItemOverflowMode.wrap),
                            tooltipBehavior: _tooltipBehavior,
                            series: <CircularSeries>[
                              PieSeries<GDPData, String>(
                                dataSource: _chartData,
                                xValueMapper: (GDPData data, _) =>
                                    data.continent,
                                yValueMapper: (GDPData data, _) => data.gdp,
                                dataLabelSettings:
                                    const DataLabelSettings(isVisible: true),
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
                                overflowMode: LegendItemOverflowMode.wrap),
                            tooltipBehavior: _tooltipBehavior,
                            series: <CircularSeries>[
                              PieSeries<GDPData, String>(
                                dataSource: _chartData1,
                                xValueMapper: (GDPData data, _) =>
                                    data.continent,
                                yValueMapper: (GDPData data, _) => data.gdp,
                                dataLabelSettings:
                                    const DataLabelSettings(isVisible: true),
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
                                overflowMode: LegendItemOverflowMode.wrap),
                            tooltipBehavior: _tooltipBehavior,
                            series: <CircularSeries>[
                              PieSeries<GDPData, String>(
                                dataSource: _chartData2,
                                xValueMapper: (GDPData data, _) =>
                                    data.continent,
                                yValueMapper: (GDPData data, _) => data.gdp,
                                dataLabelSettings:
                                    const DataLabelSettings(isVisible: true),
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
                height: size.height * 0.12,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
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
                  decoration: BoxDecoration(
                      color: AppColors.BackBlueColor,
                      borderRadius: BorderRadius.circular(12)),
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
                                                            color: Colors.green,
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
                              height: size.height * 0.05,
                              width: size.width * 1,
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
          icon: Icons.menu,
          spacing: 12,
          spaceBetweenChildren: 12,
          children: [
            SpeedDialChild(
                child: const Icon(Icons.add),
                backgroundColor: Colors.blue,
                label: 'Ajoute un Client',
                onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const CreateClient()))),
            SpeedDialChild(
                child: Icon(Icons.copy),
                backgroundColor: Colors.green,
                label: 'Importe un document',
                onTap: () => Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const CreateClient())))
          ],
        ));
  }

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
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
