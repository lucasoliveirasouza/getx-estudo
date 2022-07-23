import 'package:flutter/material.dart';

class TotalPage extends StatelessWidget {
  const TotalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "Total itens",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
