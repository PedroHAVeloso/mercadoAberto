import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
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
        shadowColor: Colors.transparent,
        backgroundColor: Color(0xfff5d415),
        title: SizedBox(
          width: 350,
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              labelText: 'Buscar no Mercado Aberto',
            ),
          ),
        ),
        /*Text(
          "Mercado Aberto",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),*/
        centerTitle: true,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu_rounded),
              color: Colors.black,
              onPressed: () {},
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            color: Color(0xfff5d415),
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Text(
                  "Enviar para Marcelo Queiroz - Rua Jardim Paulista, 56",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(20),
        ),
      ),
      //
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: <Color>[
          Color(0xfff5d415),
          Color(0xfff5f5f5),
        ])),

        /*children: [
          Container(
            child: Material(
              child: ListTile(
                leading: Icon(Icons.location_pin),
                title: const Text('Enviar para (???)'),
                tileColor: Color(0xfff5d415),
                /*trailing: Icon(Icons.more_vert),*/
              ),
            ),
          ),
          ]*/
      ),
    );
  }
}
