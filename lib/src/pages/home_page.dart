
import "package:flutter/material.dart";

class HomePage extends StatelessWidget{

  final estiloTexto= new TextStyle(fontSize: 35);

  final conteo=10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text("Title"),
        centerTitle: true,
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,  //centra el children
         
          children: <Widget>[
            Text("Numbers of clicks", style: estiloTexto),  //si se quiere modificar el texto, se usa el style y despues text style
            Text("$conteo", style: estiloTexto),
            
          ],
          ),
        
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: FloatingActionButton( //creacion de boton
          
          child: Icon(Icons.add),
          onPressed: (){ //cuando creas un boton a fuersas debe de llevar esta propiedad
            print("Hello world!!");  // Esto te aparecera en la terminal

           // conteo=conteo+1;
          },   //la accion de precionar el boton
        ),
    );
  }
}