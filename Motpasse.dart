import 'package:flutter/material.dart';

class Motpasse extends StatefulWidget {
  const Motpasse({Key? key}) : super(key: key);

  @override
  State<Motpasse> createState() => _MotpasseState();
}

class _MotpasseState extends State<Motpasse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: 'mot de passe actuel',
                  )),
              SizedBox(
                height: 20,
              ),
              TextField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintText: 'nouveau mot de passe ',
                  )),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Log in "),
              )
            ],
          ),
        ),
      ),
    );
  }
}
