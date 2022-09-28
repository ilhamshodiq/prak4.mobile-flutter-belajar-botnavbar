import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/sekiro.png"),
              fit: BoxFit.cover,
            ),
          ),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 148,
                height: 148,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("images/Hitagipeek.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 80,
          padding: const EdgeInsets.all(30),
          child: const Center(
            child: Text(
              "\"Your tormented soul will shine in my collection.\"",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(left: 18, right: 18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
              Text("Account"
                  ""),
            ],
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(left: 18, right: 18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.settings),
              SizedBox(
                width: 10,
              ),
              Text("Settings"),
            ],
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(left: 18, right: 18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.help),
              SizedBox(
                width: 10,
              ),
              Text("FAQ"),
            ],
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.only(left: 18, right: 18),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.logout),
              SizedBox(
                width: 10,
              ),
              Text("Log Out"),
            ],
          ),
        ),
      ],
    );
  }
}
