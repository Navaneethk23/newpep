import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: SampleUi())));
}

class SampleUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.green,
          backgroundColor: Colors.limeAccent,
          title: Text(
            "Sampleui",
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.white,
          ],
          begin: Alignment.centerRight,
          end: Alignment.bottomCenter,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.ac_unit_rounded,
              size: 50,
            ),
            Text(
              "Flutter",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
