import 'package:flutter/material.dart';
import '../themes/colors.dart';

class AddUrl extends StatefulWidget {
  const AddUrl({super.key});

  @override
  State<AddUrl> createState() => _AddUrlState();
}

class _AddUrlState extends State<AddUrl> {
  final _formkey = GlobalKey<FormState>();
  final nameUrlController = TextEditingController();
  final urlController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameUrlController.dispose();
    urlController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: couleur,
        foregroundColor: blanc,
        title: Text("Ajouter un lien"),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 50, right: 15, left: 15),
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nom du site',
                    hintText: 'Ex: Google',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: nameUrlController,
                ),
                SizedBox(height: 25,),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Lien du site',
                      hintText: 'Ex: https://google.com',
                      border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: urlController,
                ),
                SizedBox(height: 25,),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: (){
                        if(_formkey.currentState!.validate()){
                          final nameUrl = nameUrlController.text;
                          final url = urlController.text;
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(
                                title: Text('Ajout de site', style: TextStyle(color: couleur),),
                                content: Text("$nameUrl a été ajouté avec succès"),
                                actions: [
                                  TextButton(
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok', style: TextStyle(color: couleur))
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(couleur),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)))
                      ),
                      child: Text('Ajouter',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
