import 'package:awpa/src/profile.dart';
import 'package:flutter/material.dart';
import 'menu.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({Key? key}) : super(key: key);

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 27, 192, 221),
                Color.fromARGB(15, 177, 177, 50),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 50.1,
                    //backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/image.png'),
                  ),
                  Divider(height: 50, color: Colors.orange),
                  /*Text(
                    "login",
                    style: TextStyle(fontFamily: 'arial', fontSize: 30.0),
                  ),*/
                  //Divider(height: 18),
                  TextField(
                    enableInteractiveSelection: false,
                    autofocus: true,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      hintText: "User name",
                      labelText: "User name",
                      suffixIcon:
                          Icon(Icons.verified_user, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Divider(
                    height: 18.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      hintStyle: TextStyle(color: Colors.black),
                      suffixIcon: Icon(
                        Icons.alternate_email,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Divider(height: 18),
                  TextField(
                    enableInteractiveSelection: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      suffixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Divider(height: 15),
                  Row(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: SizedBox(
                        //width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const menu()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              "Guest",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontFamily: "arial",
                              ),
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),

                  //Divider(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
