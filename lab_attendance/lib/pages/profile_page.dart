import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

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
        body: Center(
          child: Profile(
            imageUrl:
            "https://images.unsplash.com/photo-1598618356794-eb1720430eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            name: "Shamim Miah",
            website: "shamimmiah.com",
            designation: 'Reg Number: $qrCodeData',
            email: "cse.shamimosmanpailot@gmail.com",
            phone_number: "01757736053",
          ),
        )

    );
  }
}
