import 'package:flutter/material.dart';
import 'package:first_project/helpers/colors.dart';
class appBarBon extends StatelessWidget{
    appBarBon({super.key});

    @override
  Widget build(BuildContext context) {
   
    return AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('BON',style: TextStyle(color: Colors.black),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                TextButton.icon(onPressed: (){}, label: Text('0'), icon: Icon(Icons.currency_bitcoin_sharp),style: ButtonStyle(
                  
                ),),
                Text('Minchev 30 sep 2023 !',style: TextStyle(color: Colors.black,fontSize: 5),),
                
              ],
            )
          ],
        ),
          
    );   
       
  }
}