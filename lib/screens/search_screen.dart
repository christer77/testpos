import 'package:flutter/material.dart';
import 'package:testpos/core/constantes.dart';
import 'package:testpos/screens/resultSearch_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Constantes.APP_NAME),
      ),
      body: Center(
        child: Padding (
          padding: const EdgeInsets.all(10),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo-wallet.png', width: 150,),
              const SizedBox(height: 50,),
              TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon : Icon(Icons.search),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context){
                          return ResultSearchScreen();
                        },
                        fullscreenDialog: true
                      ));

                    },
                  ),
                  hintText: 'Rechercher...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                onEditingComplete: () {}, //
              )
            ],
          ),
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  
  }
}