import 'package:flutter/material.dart';
import 'package:project/util/drug_card.dart';

class DrugList extends StatelessWidget {
  const DrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            DrugCard(
              drugImagePath: 'images/drug1.jpg',
              rating: '4.9',
              drugName: 'Acetaminophen',
              department: 'medical department',
            ),
            DrugCard(
              drugImagePath: 'images/drug2.jpg',
              rating: '4.1',
              drugName: 'Amitriptyline',
              department: 'medical department',
            ),
            DrugCard(
              drugImagePath: 'images/drug3.jpg',
              rating: '4.4',
              drugName: 'Atorvastatin',
              department: 'medical department',
            ),
            DrugCard(
              drugImagePath: 'images/drug4.png',
              rating: '4.7',
              drugName: 'Famciclovir',
              department: 'medical department',
            ),
          ],
        ),
      ),
    );
  }
}
