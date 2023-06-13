import 'package:flutter/material.dart';
import 'package:lab_attendance/pages/qr_scanner.dart';
import 'package:profile/profile.dart';

import '../components/my_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.qrCodeData,}) : super(key: key);

  final String qrCodeData;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Profile Details",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
        body: Column(
          children: [
            Center(
              child: Profile(
                imageUrl:
                "",
                name: "Shamim Miah",
                website: "shamimmiah.com",
                designation: qrCodeData,
                email: "cse.shamimosmanpailot@gmail.com",
                phone_number: "01757736053",
              ),

            ),
            MyButton(onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QRViewExample()));
            }, childText: 'Back',

            )
          ],
        ),

    );
  }
}
