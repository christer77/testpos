import 'package:flutter/material.dart';
import 'package:testpos/core/constantes.dart';
import 'package:testpos/core/model.dart';
import 'package:testpos/screens/operation_screen.dart';

class ResultSearchScreen extends StatelessWidget {
  ResultSearchScreen({super.key});

  final List<Epargne> epargnes = [
    Epargne(CodeCompte: "120100030256", NomCompte: "Kahasha christer biringanine", Client_ID: "xxx", produitEpargne: "xxx", CodeDevise: "USD", CodeAgence: "", nomProdEp: "", solde: "100.00", lienamount: "", estFermer: "", nomAgence: "", montantMinDepot: "", montantMaxRetrait: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Container(
            alignment: Alignment.centerLeft,
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon : const Icon(Icons.search),
                    onPressed: () { },
                  ),
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ), 
        ),
        body: ListView.builder(
          itemCount: epargnes.length,
          itemBuilder: (context, index) {
            final epargne = epargnes[index];
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.kUFzwD5-mfBV0PfqgI5GrAHaHa?rs=1&pid=ImgDetMain'),
              ),
              title: Text(epargne.CodeCompte),
              subtitle: Text(epargne.NomCompte),
              trailing: Text("${epargne.solde} ${epargne.CodeDevise}"),
              onTap :() {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return _modalRecharge(epargne, context);
                    },
                  );
                
              },
            );
          },
        ),
      );
      
  }
  Widget _modalRecharge(dynamic data, dynamic context) {
    
    return SizedBox(
      height: 150,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(data.CodeCompte),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context){
                          return OperationScreen(epargne :data, operation: "depot");
                        },
                        fullscreenDialog: true
                      ));
                      // ;
                      //  onTapEpargnes(data, "depot");
                    },
                    child: const Row(
                      children:  [
                        Icon(Icons.bolt_rounded),
                        SizedBox(width: 20),
                        Text("Effectuer un Dépôt")
                      ],
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   primary: Constantes.colorSuccess,
                    // ),
                  ),
                  
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(Icons.outbond),
                        SizedBox(width: 20),
                        Text("Effectuer un Rétrait")
                      ],
                    ),
                    // style: ElevatedButton.styleFrom(
                    //   primary: Constantes.rgbInfo,
                    // ),
                  ),
                  
                
                
              ])
            )
          ],
        ),
      ),
    );
    
  }


  
}
