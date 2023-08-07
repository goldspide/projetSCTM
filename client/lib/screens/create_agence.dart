import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';

class CreateAgence extends StatefulWidget {
  const CreateAgence({super.key});

  @override
  State<CreateAgence> createState() => _CreateAgenceState();
}

class _CreateAgenceState extends State<CreateAgence> {
  final responsableController = TextEditingController();
  final codeController = TextEditingController();
  final descriptionController = TextEditingController();
  final regionController = TextEditingController();
  final quartierController = TextEditingController();
  final villeController = TextEditingController();
  final contactController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajoute une Agence'),
        backgroundColor: AppColors.BackBlueColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: responsableController,
                decoration: InputDecoration(
                    labelText: 'Responsable',
                    hintText: 'Entrez le nom du responsable',
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: responsableController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => responsableController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: codeController,
                decoration: InputDecoration(
                    labelText: 'code',
                    hintText: 'Entrez le code de l\'agence',
                    prefixIcon: const Icon(Icons.code),
                    border: const OutlineInputBorder(),
                    suffixIcon: codeController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => codeController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    labelText: 'description',
                    hintText: 'description',
                    prefixIcon: const Icon(Icons.description),
                    border: const OutlineInputBorder(),
                    suffixIcon: descriptionController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => descriptionController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: regionController,
                decoration: InputDecoration(
                    labelText: 'Region',
                    hintText: 'Entrez la region',
                    prefixIcon: const Icon(Icons.app_registration_outlined),
                    border: const OutlineInputBorder(),
                    suffixIcon: regionController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => regionController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: quartierController,
                decoration: InputDecoration(
                    labelText: 'Quartier',
                    hintText: 'Entrez Votre Quartier',
                    prefixIcon: const Icon(Icons.place),
                    border: const OutlineInputBorder(),
                    suffixIcon: quartierController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => quartierController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: villeController,
                decoration: InputDecoration(
                    labelText: 'Ville',
                    hintText: 'Entrez Votre ville',
                    prefixIcon: const Icon(Icons.location_city),
                    border: const OutlineInputBorder(),
                    suffixIcon: villeController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => villeController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: contactController,
                decoration: InputDecoration(
                    labelText: 'Contact',
                    hintText: 'Entrez Votre contact',
                    prefixIcon: const Icon(Icons.phone),
                    border: const OutlineInputBorder(),
                    suffixIcon: contactController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => contactController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red),
                        child: const Center(
                            child: Text(
                          'Annuler',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green,
                        ),
                        child: const Center(
                            child: Text(
                          'Enregistre',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
