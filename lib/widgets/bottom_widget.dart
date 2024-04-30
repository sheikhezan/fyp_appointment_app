import 'package:flutter/material.dart';
import 'package:fyp/views/dotors_view.dart';
import 'package:fyp/views/home_view.dart';
import 'package:fyp/views/location_view.dart';
import 'package:fyp/views/login_view.dart';
import 'package:fyp/views/patient_view.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  _BottomWidgetState createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeView(),
    LocationView(),
    const LoginView(),
    PatientView(),
    DoctorsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _getCurrentScreen(),
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          height: MediaQuery.of(context).size.height * 0.09,
          color: Colors.white.withOpacity(0.9),
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMaterialButton(Icons.home_filled, 0,),
                _buildMaterialButton(Icons.location_on_outlined, 1),
                _buildMaterialButton(Icons.calendar_month_outlined, 2),
                _buildMaterialButton(Icons.person_2_outlined, 3),
                _buildMaterialButton(Icons.local_hospital, 4)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCurrentScreen() {
    return screens[currentTab];
  }

  Widget _buildMaterialButton(IconData icon, int index) {
    bool isSelected = index == currentTab;

    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentTab = index;
          });
        },
        child: Icon(
          icon,
          size: 30,
          color: isSelected ? Color(0xff68609c) : Colors.black,
        ),
      ),
    );
  }
}
