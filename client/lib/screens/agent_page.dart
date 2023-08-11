import 'package:client/controllers/agency.dart';
import 'package:client/models/agency.dart';
import 'package:client/screens/create_agence.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgentPage extends StatefulWidget {
  const AgentPage({super.key});

  @override
  State<AgentPage> createState() => _AgentPageState();
}

class _AgentPageState extends State<AgentPage> {
  final codeController = TextEditingController();
  final responsableController = TextEditingController();
  final categorieController = TextEditingController();
  final villeController = TextEditingController();
  final regionController = TextEditingController();
  final quartierController = TextEditingController();
  final agence = [
    {
      'responsable': "TAGAKOU Hammel",
      'code': 'WERTCF',
      'description': 'Industrie Metalique',
      'region': 'Littoral',
      'ville': 'Douala',
      'quartier': ' Bastos',
      'contact': ' +237 680 401 646',
    },
    {
      'responsable': "TAGAKOU Hammel",
      'code': 'WERTCF',
      'description': 'Industrie Metalique',
      'region': 'Littoral',
      'ville': 'Douala',
      'quartier': ' Bastos',
      'contact': ' +237 680 401 646',
    },
    {
      'responsable': "TAGAKOU Hammel",
      'code': 'WERTCF',
      'description': 'Industrie Metalique',
      'region': 'Littoral',
      'ville': 'Douala',
      'quartier': ' Bastos',
      'contact': ' +237 680 401 646',
    },
    {
      'responsable': "TAGAKOU Hammel",
      'code': 'WERTCF',
      'description': 'Industrie Metalique',
      'region': 'Littoral',
      'ville': 'Douala',
      'quartier': ' Bastos',
      'contact': ' +237 680 401 646',
    },
    {
      'responsable': "TAGAKOU Hammel",
      'code': 'WERTCF',
      'description': 'Industrie Metalique',
      'region': 'Littoral',
      'ville': 'Douala',
      'quartier': ' Bastos',
      'contact': ' +237 680 401 646',
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
                width: size.width,
                child: Text(
                  'Gestion Des Agence',
                  style: GoogleFonts.ubuntu(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.BackOrangeColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                                  controller: codeController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Code',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.code,
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
                            width: 15,
                          ),
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
                                  controller: responsableController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Responsable',
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
                                  controller: categorieController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Categorie',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.folder,
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
                            width: 16,
                          ),
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
                                  controller: regionController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Region',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.location_pin,
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
                            width: 16,
                          ),
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
                                  controller: quartierController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Quartier',
                                    hintStyle: TextStyle(color: Colors.black),
                                    prefixIcon: Icon(
                                      Icons.location_on_outlined,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 210, top: 10),
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
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
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
                          'Ordered by Code',
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
                              'Code',
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text('Description',
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
                height: size.height * 0.38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.BackBlueColor,
                ),
                child: FutureBuilder(
                    future: AgencyController.getAll(),
                    builder: (context, snapshot) {
                      List<Agency> data = [];
                      if (snapshot.data != null) {
                        data = snapshot.data!;
                      }
                      return ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final val = agence[index];
                            final responsable = val['responsable'];
                            final code = val['code'];
                            final description = val['description'];
                            final quartier = val['quartier'];
                            final ville = val['ville'];
                            final region = val['region'];
                            final contact = val['contact'];

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
                                          ),
                                          height: 320,
                                          width: 400,
                                          child: Column(
                                            children: [
                                              Text(
                                                'Detaile sur l\'agence  a $ville',
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
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  alignment: Alignment.topLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Responsable:   $responsable",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Code :   $code",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Description :   $description",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Region :   $region",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Ville :   $ville",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Quartier :   $quartier",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        "Contact :   $contact",
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
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
                                                                  color: Colors
                                                                      .red),
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
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
                                                                color: Colors
                                                                    .green,
                                                              ),
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
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
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '${data[index].code}',
                                                style: GoogleFonts.ubuntu(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                        Text('${data[index].description}',
                                            style: GoogleFonts.ubuntu(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
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
            MaterialPageRoute(builder: (context) => const CreateAgence()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
