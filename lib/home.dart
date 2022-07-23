import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:somagetx/controllers/soma_controller.dart';
import 'package:somagetx/views/total_page.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final SomaController c = Get.put(SomaController());

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
                    onPressed: () => c.increment(),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      onPressed: () => c.decrement(),
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Pens",
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
                    onPressed: () => c.incrementPens(),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      onPressed: () => c.decrementPens(),
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade900,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () => Get.to(() => TotalPage()),
                    child: Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
