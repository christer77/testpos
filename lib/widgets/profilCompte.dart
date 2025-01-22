import 'package:flutter/material.dart';
import 'package:testpos/core/model.dart';

class ProfilCompte{

  Epargne epargne;
  ProfilCompte({required this.epargne});
  
  Widget getProfil(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: const Color.fromARGB(255, 240, 235, 235),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            margin: const EdgeInsets.all(3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(
                epargne.CodeCompte,
                style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 50, 49, 49), fontWeight: FontWeight.bold,),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Solde",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 179, 24, 13),), 
                  ),
                  Text(
                    "Bloqué",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 179, 24, 13),), 
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${epargne.solde } ${epargne.CodeDevise } ",
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 179, 24, 13),), 
                  ),
                  Text(
                    "${epargne.lienamount } ${epargne.CodeDevise } ",
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 179, 24, 13),), 
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              Text(
                "Nom: ${epargne.NomCompte } ",
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 41, 43, 41),), 
              ),
              Text(
                "Produit: ${epargne.nomProdEp } ",
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 41, 43, 41),), 
              ),
              
              
              Text(
                "CodeAgence: ${epargne.CodeAgence } ",
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 41, 43, 41),), 
              ),
              Text(
                "Etat actuel du compte: ${epargne.estFermer } ",
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color:  Color.fromARGB(255, 41, 43, 41),), 
              ),
                          
            ]),
          ),
        )
        )
      );
  }

}