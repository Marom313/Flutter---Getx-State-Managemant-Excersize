// ignore_for_file: unnecessary_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/my_controller.dart';
import 'package:getx_state_management/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());

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
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.incrementBooks(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    c.books.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ), // להשתמש בוריאבל שמשתנה תוך כדי ריצה
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
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrementBooks(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.incrementPens(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(
                  () => Text(
                    c.pens.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ), // להשתמש בוריאבל שמשתנה תוך כדי ריצה
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
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrementPens(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
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
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => Get.to(() => TotalPage()),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
