import 'package:flutter/material.dart';
import 'package:somagetx/controllers/soma_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final SomaController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
