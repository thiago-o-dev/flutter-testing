import 'package:flutter/material.dart';

void main() {
  runApp(CartaoApp());
}

class CartaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cartão de Aniversário",
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TelaCartao(),
    );
  }
}

class TelaCartao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartão de Aniversário"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image.png"),
            fit: BoxFit.cover
          ) 
        ),
        child: Center(
          child: Mensagem(
            mensagem: "FELIZ ANIVERSAIRO",
            remetente: "mPOOOOOOOOOOOrrinha",
            )
          ),
      ),
    );
  }
}

class Mensagem extends StatelessWidget {
  String mensagem;
  String remetente;

  Mensagem({super.key, required this.mensagem, required this.remetente});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mensagem,
          style: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          remetente,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.end,
        )
        
      ],
    );
  }
}