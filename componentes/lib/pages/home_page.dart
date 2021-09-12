import 'package:flutter/material.dart';

class HomePageTemp extends StatefulWidget {
  HomePageTemp({Key? key}) : super(key: key);

  @override
  _HomePageTempState createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorto()        
      ),
    );
  }

  List<Widget> _crearItems(){
    
    List<Widget> lista = [];

    for (String item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      lista..add(tempWidget)
           ..add(Divider(color: Colors.red,));
    }

    return lista;
  }

    List<Widget> _crearItemsCorto(){
    
    return opciones.map((item){
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit_outlined),
            trailing: Icon(Icons.access_alarms_rounded),
          ),
          Divider(color: Colors.redAccent,)
        ],
      );
    }).toList();
  }

}