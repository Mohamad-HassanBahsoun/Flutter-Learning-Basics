import 'package:flutter/material.dart';

class CR_success extends StatefulWidget {
  @override
  State<CR_success> createState() => _CR_sucessState();
}

class _CR_sucessState extends State<CR_success> {
  @override
  void switchBack() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(
          context, '/'); //NEED TO REDIRECT TO THE RIGHT PAGE HERE
    });
  }

  @override
  void initState() {
    super.initState();
    switchBack();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Carpool Request Sucessful",
                  textAlign: TextAlign.center,
                ),
                Text("Redirecting"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
