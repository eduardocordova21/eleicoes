import 'package:flutter/material.dart';

import '../views/pagina_adicionar_eleicao.dart';
import '../views/pagina_lista_de_eleicoes.dart';

class BottomNavigationBarCustomWidget extends StatefulWidget {
  const BottomNavigationBarCustomWidget({super.key});

  @override
  State<BottomNavigationBarCustomWidget> createState() =>
      _BottomNavigationBarCustomWidgetState();
}

class _BottomNavigationBarCustomWidgetState
    extends State<BottomNavigationBarCustomWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetPages = <Widget>[
    PaginaListaDeEleicoes(),
    PaginaAdicionarEleicao()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Eleições',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_sharp),
            label: 'Adicionar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Local',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Status',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey[400],
        onTap: _onItemTapped,
      ),
    );
  }
}
