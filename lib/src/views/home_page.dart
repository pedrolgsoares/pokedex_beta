import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pokédex versão beta")),
      body: _pageAcess(),
    );
  }

  _pageAcess() {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/title.png"),
          Image.asset("assets/images/icon.png"),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 15,
                shadowColor: Colors.black),
            child: const Text(
              'Acessar a pokédex',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
