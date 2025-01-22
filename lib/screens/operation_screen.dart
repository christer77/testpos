import 'package:flutter/material.dart';
import 'package:testpos/core/constantes.dart';
import 'package:testpos/screens/print_screen.dart';
import 'package:testpos/widgets/profilCompte.dart';


class OperationScreen extends StatelessWidget {
  OperationScreen({super.key, this.epargne, this.operation});
  final epargne;
  final operation;
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("${Constantes.APP_NAME}(${operation.toUpperCase()})"),
      ),
      body: SingleChildScrollView (
        child: Padding (
            padding: const EdgeInsets.all(1),
            child: Column(
            
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ProfilCompte(epargne: epargne).getProfil(),
                const SizedBox(height: 10,),
                Container(
                  padding:  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    maxLength: 15,
                    decoration:  InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Montant',
                        hintText: 'Montant'),
                        // controller: montantController,
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: SizedBox(
                    height: 50,
                    width: size.width,
                    // decoration: BoxDecoration( color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      // isReadyDestin
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context){
                            return PrintScreen();
                          },
                          fullscreenDialog: true
                        ));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          
                          Text( 'Valider',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Icon(Icons.send_rounded), 
                        ],
                      )
                    ),
                  ),
                ),
              
            ],
          ),
        )
      )
    );
  }
}
