import 'package:flutter/material.dart';

import '../../helpers/colors.dart';

class appBarqrCode extends StatelessWidget{
  appBarqrCode({super.key});

  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      backgroundColor: AppColors.bgColor,
        elevation: 0,
        title: Text('QR կոդ',style:TextStyle(color: AppColors.appBlack),),
    );
  }
}