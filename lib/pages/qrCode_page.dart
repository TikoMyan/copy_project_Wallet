import 'dart:ffi';

import 'package:first_project/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:first_project/widgets/add_qrcode.dart';
import 'package:qr_flutter/qr_flutter.dart';
// import 'package:upi_payment_qrcode_generator/upi_payment_qrcode_generator.dart';

// import 'package:first_project/helpers/colors.dart';
class QrCodePage extends StatefulWidget {
   QrCodePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QrCode();
  }
}

class _QrCode extends State<QrCodePage> {
  // qrCode({super.key});
  // int qrIndex = 0;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          elevation: 0,
          title: Text(
            'QR կոդ',
            style: TextStyle(color: AppColors.appBlack),
          ),
          
          bottom: TabBar(
            indicatorColor: AppColors.appOrange,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(
                text: 'Սկանավորել կոդը',
              ),
              Tab(
                text: 'Իմ QR կոդը',
              )
            ],
            labelColor: AppColors.appBlack,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: TabBarView(children: [
            // QrCode(),
            Placeholder(),
            tabTwo(),
            
          ]),
        ),
      ),
    );
  }
  Widget tabOne() => Container(
    height: 100,
    width: 100,
    decoration: const BoxDecoration(
      color: Colors.amber,
    ),
    
    
  );
  Widget tabTwo(){
   
    return Column(
    
    children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        width: 350,
        height: 300,
        decoration: BoxDecoration(
              color: AppColors.appLightGrey,
              borderRadius: BorderRadius.vertical(top: Radius.elliptical(10, 10)),
              border: Border.all(width: 1, color: Colors.black54),
            ),
        child: Column(
          children: [
            SizedBox(
                width: 40,
                height: 40,
                child: Image.network(
                    'https://images.crunchbase.com/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/rot2qnbse1m2qowoji0v'),
              ),
            QrImageView(
            // ignore: unnecessary_string_interpolations
            data: '$myQrId',
            version: QrVersions.auto,
            size: 250.0,
            
      ),
          ],
        ),
      ),
      Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.appLightGrey,
            // borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(2, 2)),
            border: Border(bottom: BorderSide(width: 1, color: Colors.black54),left:  BorderSide(width: 1, color: Colors.black54),right:  BorderSide(width: 1, color: Colors.black54)),
          ),
          child:const Center(
            child: Text('ID: 49452935' ,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center),
          )  ,
        ),
    ],
    
  );
  
  }
   String myQrId ='49452935';
}

