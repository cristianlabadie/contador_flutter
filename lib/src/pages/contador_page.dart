import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  
  createState() => _ContadorPageState();
  
}

class _ContadorPageState extends State<ContadorPage>{
  final _styleTexto = new TextStyle(fontSize: 25);
  int _conteo =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        elevation: 180.0, //Genera un sombreado desde el title hacia abajo
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: _styleTexto),
            Text('$_conteo',style: _styleTexto),
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones()       
    );


  }

  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: () {},),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: () {},),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.refresh), onPressed: () {},),
      ],
      
      );
    
    
    
  }
}