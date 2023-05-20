import 'package:flutter/material.dart';

import 'menu.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.1,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/image.png'),
              ),
              Divider(height: 18),
              Text(
                "login",
                style: TextStyle(fontFamily: 'cursive', fontSize: 30.0),
              ),
              Divider(height: 18),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: "User name",
                    labelText: "User name",
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(height: 18),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(height: 15),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => menu()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(
                        8.0), // Ajusta el valor según tus necesidades
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontFamily: "arial",
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
