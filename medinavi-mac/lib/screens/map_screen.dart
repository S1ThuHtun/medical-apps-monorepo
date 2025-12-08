import 'package:flutter/material.dart';
import 'package:medinavi/screens/healthcare_map_example.dart';
//import 'package:medinavi/widgets/login_screen_setting.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HealthcareMapExample();
    //Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.transparent,
    //     title: Text('Map Screen', style: TextStyle(color: Colors.black)),
    //   ),
    //   endDrawer: LoginScreenSetting(),
    //   body: Center(child: ),
    // Floating Action Button (typically used for map zoom, location, etc.)
    // floatingActionButton: Column(
    //   mainAxisAlignment: MainAxisAlignment.end,
    //   children: [
    //     FloatingActionButton(
    //       heroTag: 'btn1',
    //       onPressed: () {
    //         print('Zoom In');
    //       },
    //       child: Icon(Icons.add),
    //     ),
    //     SizedBox(height: 10),
    //     FloatingActionButton(
    //       heroTag: 'btn2',
    //       onPressed: () {
    //         print('My Location');
    //       },
    //       child: Icon(Icons.my_location),
    //     ),
    //     SizedBox(height: 10),
    //     FloatingActionButton(
    //       heroTag: 'btn3',
    //       onPressed: () {
    //         print('Zoom Out');
    //       },
    //       child: Icon(Icons.remove),
    //     ),
    //   ],
    // ),
  }
}
