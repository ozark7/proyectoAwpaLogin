import 'package:flutter/material.dart';

import 'menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Acción al presionar el botón de regreso
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const menu()),
            ); // Reemplazar la página actual con la nueva página
          },
        ),
        title: Text("Profile"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 20),
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/image.png'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                UserProfile(
                  profileImage: "images/image.png",
                  size: 100,
                ),
                //SizedBox(height: 20),
                Text(
                  "@${"pepito"}",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text("MATERIAS"),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(),
            color: Colors.cyan,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[Text("Ay papa")],
                ),
                Column(
                  children: <Widget>[Text("Lenx mi amor")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  final String profileImage;
  final double size;

  const UserProfile({
    super.key,
    required this.profileImage,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(this.profileImage),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.amber, width: 4)),
      margin: EdgeInsets.only(bottom: 5),
    );
  }
}
