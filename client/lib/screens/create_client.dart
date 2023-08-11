import 'package:client/controllers/user.dart';
import 'package:client/models/user.dart';
import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class CreateClient extends StatefulWidget {
  const CreateClient({super.key});

  @override
  State<CreateClient> createState() => _CreateClientState();
}

class _CreateClientState extends State<CreateClient> {
  final nameController = TextEditingController();
  // final prenomController = TextEditingController();
  final emailController = TextEditingController();
  final sexeController = TextEditingController();
  final DateTime pickedDate = DateTime.now();
  final datedenaissanceController = TextEditingController();

  final quartierController = TextEditingController();
  final villeController = TextEditingController();

  String password = '';
  bool isPasswordVisible = false;
  bool isLoading = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDatePickerMode: DatePickerMode.year,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
        locale: const Locale("en", "US"));
    if (pickedDate != null) {
      final formattedDate = DateFormat("dd/MM/yyyy").format(pickedDate);
      setState(() {
        datedenaissanceController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajoute un client'),
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
              // TextField(
              //   controller: prenomController,
              //   decoration: InputDecoration(
              //       labelText: 'Prenom',
              //       hintText: 'Entrez Votre prenom',
              //       prefixIcon: const Icon(Icons.person),
              //       border: const OutlineInputBorder(),
              //       suffixIcon: nameController.text.isEmpty
              //           ? Container(
              //               width: 0,
              //             )
              //           : IconButton(
              //               onPressed: () => nameController.clear(),
              //               icon: const Icon(Icons.close))),
              // ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Entrez Votre Email',
                    prefixIcon: const Icon(Icons.email),
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
                    prefixIcon: const Icon(Icons.face),
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
                  border: InputBorder.none,
                  hintText: 'date de naissance',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: IconButton(
                      onPressed: () => _selectDate(context),
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.black,
                      )),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                ),
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
                    prefixIcon: const Icon(Icons.location_city),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            isLoading = true;
                          });
                          User user = User(
                              fullName: nameController.text,
                              email: emailController.text,
                              gender: sexeController.text.toLowerCase() ==
                                      "masculin"
                                  ? "male"
                                  : "female",
                              dateofBirth: pickedDate,
                              quater: quartierController.text,
                              city: villeController.text);
                          try {
                            await UserController.create(user);
                            setState(() {
                              nameController.clear();
                              emailController.clear();
                              sexeController.clear();
                              quartierController.clear();
                              villeController.clear();
                              datedenaissanceController.clear();
                            });
                            Fluttertoast.showToast(
                                msg: "Enregistrement effectué !");
                          } catch (e) {
                            print(e);
                          } finally {
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                        child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green,
                          ),
                          child: const Center(
                              child: Text(
                            'Enregistrer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                        ),
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
