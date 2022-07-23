import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/assinarbarra.dart';
import 'package:mercadoaberto/components/campopesquisa.dart';
import 'package:mercadoaberto/components/fretebarra.dart';
import 'package:mercadoaberto/components/imagembanner.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 85,
        elevation: 0,
        backgroundColor: Color(0xffffdb15),
        
        leading: const Padding(
          padding: EdgeInsets.only(top: 5),

          child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
          ), // > Icone de Menu
        
        ), // > Bordas do Icone

        actions: const [
          campoPesquisa(), // > Barra de Pesquisa
          Padding(padding: EdgeInsets.all(6)),
          
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 32,
            ),
          ), // > Icone de Compra

          Padding(padding: EdgeInsets.all(6)),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: const Color(0xffffdb15),
            height: 40.0,
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.all(5)),
                Icon(
                  Icons.pin_drop_outlined,
                  size: 22,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56"),
              ],
            ),
          ),
        ),
      
      ),
      
      // Corpo
      body: Container(

        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ), // > Bordas Laterais do Container

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset(0.5, 0.2),
            colors: [
              Color(0xffffdb15),
              Color(0xfff5f5f5),
            ],
          ),
        ), // > Gradiente
        
        child: Column(
          children: const [
            Padding(padding: EdgeInsets.all(5)),
            imagemBanner(),
            Padding(padding: EdgeInsets.all(10)),
            assinarBarra(
              titulo: "Assine o nível 6 por R\$ 9,90 por mês!",
            ),
            Padding(padding: EdgeInsets.all(5)),
            freteBarra(),
            Padding(padding: EdgeInsets.all(10)),
          ],
        ),

      ),
      //Corpo

    );
  }
}
