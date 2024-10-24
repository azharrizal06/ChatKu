import 'package:flutter/material.dart';

import '../../help/colors.dart';
import '../../modules/home/views/home_view.dart';

class SplesView extends StatefulWidget {
  const SplesView({super.key});

  @override
  State<SplesView> createState() => _SplesViewState();
}

class _SplesViewState extends State<SplesView> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      body: Center(
        child: Center(
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
