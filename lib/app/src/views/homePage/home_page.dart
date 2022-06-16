import 'package:flutter/material.dart';
import 'package:pokedexbeta/app/src/views/pokeList/poke_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF0092B9),
            Color(0xFF0167B2)
          ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/title.png'),
            SizedBox(height: screenSize.height * .1),
            SizedBox(
              width: screenSize.width * .8,
              height: 49,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],

                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PokeList()));
                }, 
                child: const Text(
                  'Acessar pokedéx',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87
                  ),
                )
                ))
          ],
        )),
      ),
    );
  }
}