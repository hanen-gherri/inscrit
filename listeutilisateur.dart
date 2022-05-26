import 'dart:html';

import 'package:flutter/material.dart';
import 'datauser.dart';

class Listeutlisateur extends StatelessWidget {
  const Listeutlisateur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liste utlisateurs"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      drawer: (ListView(
        children: [
          DrawerHeader(child: Text('Profil')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        child: Text(""),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Deconnexion'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      )),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(3),
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Text(""),
                          ),
                          Column(
                            children: [
                              Text(
                                "${data[index].nom}",
                                style: TextStyle(),
                              ),
                              Text(
                                "${data[index].tel}",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1100, right: 0),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    data.clear();
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
    );
  }
}
