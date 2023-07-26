// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrugCard extends StatelessWidget {
  //const DrugCard({super.key});

  final String drugImagePath;
  final String rating;
  final String drugName;
  final String department;

  DrugCard({
    required this.drugImagePath,
    required this.rating,
    required this.drugName,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //picture of drug
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                drugImagePath,
                height: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            //doctor name
            Text(
              drugName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //doctor title
            Text(department)
          ],
        ),
      ),
    );
  }
}
