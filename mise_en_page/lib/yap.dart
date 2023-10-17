import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mise_en_page/main.dart';

class YapScreen extends StatefulWidget{
  @override
  YapScreenState createState() => YapScreenState();
}

class YapScreenState extends State<YapScreen>{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Yapalooza"),
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    ),

    body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Flexible(
            flex: 1,
              child: Container(
                width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: Text("L'espace entre les boutons et le texte sont les mêmes")
                ),
                Text("Texte au millieu"),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("pipo popi")
                )
              ],
            ),
          ))
        ],
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: "Ecran 1")));
      },
      tooltip: 'Increment',
      child: const Icon(Icons.arrow_left),
    ),
  );
}