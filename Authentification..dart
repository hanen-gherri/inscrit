import 'package:flutter/material.dart';
import 'package:inscription/Inscription.dart';
import 'package:inscription/Motpasse.dart';

class Authentification extends StatelessWidget {
  const Authentification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset('images/welcome.png'),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                hintText: 'Enter your Email',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: 'Enter your Password',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: RaisedButton(
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Motpasse()));
                    },
                    child: Text(
                      "Mot de passe oublié",
                      style: TextStyle(color: Colors.red),
                    )),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 10,
                  width: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Inscription()));
                    },
                    child: Text(
                      "Creé un compte",
                      style: TextStyle(color: Colors.blue[300]),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
