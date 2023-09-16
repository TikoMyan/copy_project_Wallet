import 'package:first_project/widgets/add_card_popup.dart';
import 'package:flutter/material.dart';

class BankingWidget extends StatelessWidget {
  const BankingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            // show popup screen
            showDialog(
                context: context,
                builder: (_) {
                  return AddCreditCartWidget();
                });

            //
          },
          child: Text("Add Credit Cart"),
        ),
      ],
    );
  }
}
