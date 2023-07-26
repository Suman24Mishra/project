import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/screen/drug_list.dart';
import 'package:project/util/catagory_card.dart';
import 'package:project/util/drug_card.dart'; // Import the AnotherPage widget

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        user.email!,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: IconButton(
                          onPressed: signUserOut,
                          icon: Icon(Icons.logout),
                        )),
                  ),
                  //profile picture
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('images/doctor1.jpg'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //horizontal list
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'images/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'images/surgeon.png',
                  ),
                  CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'images/medicine.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            //doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Drug List',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the new page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DrugList()),
                      );
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
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
          ],
        ),
      ),
    );
  }
}
