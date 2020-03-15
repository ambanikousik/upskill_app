import 'package:flutter/material.dart';
import 'package:upskillapp/data/data.dart';
import 'package:upskillapp/presentation/presentation.dart';

class ContributorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UpskillAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: width * 4, vertical: height * 4),
        ),
      ),
    );
  }
}
