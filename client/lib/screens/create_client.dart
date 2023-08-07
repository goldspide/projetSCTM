import 'package:flutter/material.dart';

class CreateClient extends StatefulWidget {
  const CreateClient({super.key});

  @override
  State<CreateClient> createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  final nameController = TextEditingController();
  final prenomController = TextEditingController();
  final sexeController = TextEditingController();
  final datedenaissanceController = TextEditingController();
  final quartierController = TextEditingController();
  final villeController = TextEditingController();

  String password = '';
  bool isPasswordVisible = false;

  @override
  void iniState() {
    super.initState();
    nameController.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajoute un client'),
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
                controller: nameController,
                decoration: InputDecoration(
                    labelText: 'Nom',
                    hintText: 'Entrez Votre Nom',
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: prenomController,
                decoration: InputDecoration(
                    labelText: 'Prenom',
                    hintText: 'Entrez Votre prenom',
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: sexeController,
                decoration: InputDecoration(
                    labelText: 'Sexe',
                    hintText: 'Choisisez le sexe',
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
                            icon: const Icon(Icons.close))),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: datedenaissanceController,
                decoration: InputDecoration(
                    labelText: 'Date de naissance',
                    hintText: 'Entrez votre date de naissance',
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
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
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
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
                    prefixIcon: const Icon(Icons.person),
                    border: const OutlineInputBorder(),
                    suffixIcon: nameController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => nameController.clear(),
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
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
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
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
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
