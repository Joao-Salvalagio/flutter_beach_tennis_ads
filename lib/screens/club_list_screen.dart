import 'package:flutter/material.dart';

class ClubListScreen extends StatefulWidget {
  const ClubListScreen({super.key});

  @override
  State<ClubListScreen> createState() => _ClubListScreenState();
}

class _ClubListScreenState extends State<ClubListScreen> {
  String urlLogo = "https://www.cvtc.com.br/image/beachtennis.jpg";
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
                          flex: 1,
                          child: TextField()
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
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}