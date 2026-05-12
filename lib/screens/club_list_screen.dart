import 'package:flutter/material.dart';
import 'package:flutter_beachup/models/club_model.dart';

class ClubListScreen extends StatefulWidget {
  const ClubListScreen({super.key});

  @override
  State<ClubListScreen> createState() => _ClubListScreenState();
}

class _ClubListScreenState extends State<ClubListScreen> {
  String urlLogo = "https://www.cvtc.com.br/image/beachtennis.jpg";
  
  List<ClubModel> clubList = [
    ClubModel(
      nome: "Orla Beach Tennis", 
      cidade: "Maringá", 
      estado: "PR", 
      cobertura: "Sem cobertura", 
      preco: 2.99, 
      urlImagem: "https://static.sportit.com.br/public/sportit/imagens/produtos/quadra-de-beach-tennis-sport-it-m2-2946.jpg"
      ),
    ClubModel(
      nome: "Orla Beach Tennis", 
      cidade: "Maringá", 
      estado: "PR", 
      cobertura: "Sem cobertura", 
      preco: 2.99, 
      urlImagem: "https://static.sportit.com.br/public/sportit/imagens/produtos/quadra-de-beach-tennis-sport-it-m2-2946.jpg"
      ),
    ClubModel(
      nome: "Orla Beach Tennis", 
      cidade: "Maringá", 
      estado: "PR", 
      cobertura: "Sem cobertura", 
      preco: 2.99, 
      urlImagem: "https://static.sportit.com.br/public/sportit/imagens/produtos/quadra-de-beach-tennis-sport-it-m2-2946.jpg"
      )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)
                ),
              ),
              width: double.infinity,
              child: Image.network(
                urlLogo, fit: BoxFit.cover,
              )
              ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 220, 220, 220),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex:1, 
                            child: Icon (Icons.search)
                            ),
                          Expanded(
                          flex: 9,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Pesquise aqui...",
                                border: InputBorder.none
                              ),
                            ),
                          )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 30, 62, 31),
                      foregroundColor: Colors.yellow,
                      child: Icon(Icons.tune),
                      onPressed: (){}
                    )
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  spacing: 10,
                  children: clubList.map((club) => Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    height: 175,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              spacing: 5,
                              children: [
                                Row(
                                  children: [
                                    Text("${club.nome}",
                                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text(" ${club.cidade}, ${club.estado}",
                                    style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.wb_sunny_outlined),
                                    Text(" ${club.cobertura}",
                                    style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.attach_money_sharp),
                                    Text(" ${club.preco}/h",
                                    style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 30, 62, 31)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                          ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(12.5),
                            child: Container(
                              clipBehavior: Clip.antiAlias,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Image.network(club.urlImagem!, fit: BoxFit.cover,),
                              ),
                          )
                          )
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}