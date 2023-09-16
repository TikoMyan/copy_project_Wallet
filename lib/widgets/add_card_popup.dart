import 'package:flutter/material.dart';

class AddCreditCartWidget extends StatelessWidget {
  const AddCreditCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
          width: MediaQuery.of(context).size.width / 1.2,
          height: MediaQuery.of(context).size.width / 1.2),
    );
  }
}
