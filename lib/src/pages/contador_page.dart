import "package:flutter/material.dart";

//para colocar un statefull se requiere un estado de este stateful
class ContadorPage extends StatefulWidget{

  @override
    createState() {  //se requiere para que funcione el StatefulWidget 
      // TODO: implement createState
      return _ContadorPageState(); //requiere retornar una instancia del tado en este caso es _ContadorPageState
    }
  }

  //este es el estado de ContadorPage con el _ se vuelve privado ya que solo lo usara la clase ContadorPage
  class _ContadorPageState extends State<ContadorPage>{

    final _estiloTexto= new TextStyle(fontSize: 35);

    int _conteo=0;


      @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar:AppBar(
          title: Text("Statefull"),
          centerTitle: true,
        ),

        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,  //centra el children
          
            children: <Widget>[
              Text("Numbers of clicks", style: _estiloTexto),  //si se quiere modificar el texto, se usa el style y despues text style
              Text("$_conteo", style: _estiloTexto),
              
            ],
            ),
          
          ),

          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

          floatingActionButton: _crearBotones() //se generara una instancia para crear los botones
      );
    }

  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,   //alinear botones
      children: <Widget>[    //creacion de boones
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        Expanded(child: SizedBox(width: 15.0,)),  //separacion de botones
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 15.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset), //se genera codigo para el botton --- No se coloca parentesis a la funcion de agregar ya que no queremos que funcione cuando esta se crea
      ],);
    
  }
  void  _agregar(){
    setState(() {
      _conteo++;
    });
  }
  void _sustraer(){
    setState(() {
      _conteo--;
    });
  }

  void _reset(){
    setState(() {
      _conteo=0;
    });
  }

}