class DummyImg {
  static String bg = "assets/images/img.png";
  static String logo = "assets/images/logo.png";
  static String phone = "assets/images/login.png";
  static String otp = "assets/images/otp.png";
  static String on1 = "assets/images/on1.png";
  static String on2 = "assets/images/on2.png";
  static String on3 = "assets/images/on3.png";
  static String on4 = "assets/images/on4.png";
  static String doc1 = "assets/images/c1.jpg";
  static String doc2 = "assets/images/doc1.png";
  static String doc3 = "assets/images/doc2.png";
  static String doc4 = "assets/images/doc3.png";
  static String catbg = "assets/images/catbg.png";
  static String dentist = "assets/images/dentist.png";
  static String heart = "assets/images/heart.png";
  static String lungs = "assets/images/lungs.png";
  static String general = "assets/images/general.png";
  static String neuro = "assets/images/neuro.png";
  static String gast = "assets/images/gast.png";
  static String labort = "assets/images/labort.png";
  static String vaccine = "assets/images/vaccine.png";
  static String locationpin = "assets/images/custompin.png";
  static String aghakhan = "assets/images/aghakhan.jpeg";
  static String ziauddin = "assets/images/ziauddin.jpg";
  static String saifee = "assets/images/saifee.jpg";
  static String drdavid = "assets/images/dr.david.jpg";
  static String ezan = "assets/images/ezansheikh.jpg";

}
/*import 'package:flutter/material.dart';
import 'package:fyp/utils/images.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  LatLng initialLocation = const LatLng(37.422131, -122.084801);
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(),'assets/images/custompin.png')
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialLocation,
          zoom: 14,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("marker1"),
            position: const LatLng(37.422131, -122.084801),
            draggable: true,
            onDragEnd: (value) {
              // value is the new position
            },
            icon: markerIcon,
          ),
          Marker(
            markerId: const MarkerId("marker2"),
            position: const LatLng(37.415768808487435, -122.08440050482749),
          ),
        },
      ),
    );
  }
}
*/