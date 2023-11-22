import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple[700],
            ),
            width: 200,
            height: 80,
            child: Center(
              child: Text(
                'LRABank',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple[200],
              borderRadius: BorderRadius.circular(40),
            ),
            width: 500,
            height: 80,
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple[200],
              borderRadius: BorderRadius.circular(40),
            ),
            width: 500,
            height: 80,
            child: Center(
              child: Text(
                'Senha',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.purple[200],
              borderRadius: BorderRadius.circular(40),
            ),
            width: 200,
            height: 80,
            child: Center(
              child: Text(
                'Entrar',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
