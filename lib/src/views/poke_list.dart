import 'package:flutter/material.dart';

class PokeList extends StatefulWidget {
  const PokeList({Key? key}) : super(key: key);

  @override
  _PokeListState createState() => _PokeListState();
}

class _PokeListState extends State<PokeList> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    const NewPageScreen("Pokédex"),
    const NewPageScreen("Sobre a Pokédex"),
    const NewPageScreen("Sair da Pokédex")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bem vindo(a) a sua pokédex"),
        ),
        body: _telas[_indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pokédex'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Sobre a pokédex'),
            BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app), label: 'Sair da pokédex'),
          ],
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}

class NewPageScreen extends StatelessWidget {
  final String texto;

  const NewPageScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
