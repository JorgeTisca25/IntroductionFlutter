void main(){
  print("Estamos a punto de pedir datos");
  hhtpGet("https://api.nada.com/aliens").then((data){
    print(data);
  });
  print("ultima linea");
}

Future<String> hhtpGet(String url){
  return Future.delayed(new Duration(seconds:4),() {
    return "Hola Mundo";
  });
     
}