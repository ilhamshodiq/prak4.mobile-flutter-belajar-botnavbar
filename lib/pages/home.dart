import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Ilham Shodiq Mu'arif Billah",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("200605110072",
            style: TextStyle(
              fontSize: 18,
            )),
        Text(
          "Probolinggo",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
