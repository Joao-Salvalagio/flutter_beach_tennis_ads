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
      backgroundColor: Colors.white,
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
                        color: Colors.grey,
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.amber,
                    ),
                    height: 175,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Placeholder()
                          ),
                        Expanded(
                          flex: 3,
                          child: Placeholder()
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