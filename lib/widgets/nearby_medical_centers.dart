import 'package:flutter/material.dart';

class MedicalClinicCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const MedicalClinicCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 21),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 250,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(
                          title,
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ),
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
