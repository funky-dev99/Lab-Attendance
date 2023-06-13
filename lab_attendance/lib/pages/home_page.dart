import 'package:flutter/material.dart';
import 'package:lab_attendance/pages/qr_scanner.dart';

import '../components/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Lab Attendance",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
      body: Center(
        child: MyButton(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const QRViewExample()));
          }, childText: 'Scan QR',
        ),
      ),
    );
  }
}
