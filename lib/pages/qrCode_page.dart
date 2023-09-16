import 'package:first_project/helpers/colors.dart';
import 'package:flutter/material.dart';

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
  int qrIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      qrIndex = 0;
                    });
                    // qrIndex +=1;
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context) =>
                    // )
                    // );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.appOrange,
                  ),
                  child: Text(
                    'Սքանավորել կոդը',
                    style: TextStyle(color: AppColors.appBlack),
                  )),
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        qrIndex = 1;
                      });
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.appOrange,
                    ),
                    child: Text(
                      'Իմ QR կոդը',
                      style: TextStyle(color: AppColors.appBlack),
                    ))),
          ],
        ),
        Container(
          child: qrContainer(),
        )
      ],
    );
  }

  Widget qrContainer() {
    return qrContainerItem();
  }

  Widget qrContainerItem() {
    switch (qrIndex) {
      case 0:
        return qrItem();
      default:
        return defolt();
    }
  }

  Widget qrItem() => Expanded(
        child: Container(
          color: AppColors.appBlack,
        ),
      );
  Widget defolt() {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.network(
                    'https://images.crunchbase.com/image/upload/c_lpad,h_170,w_170,f_auto,b_white,q_auto:eco,dpr_1/rot2qnbse1m2qowoji0v'),
              ),
              SizedBox(
                width: 250,
                height: 200,
                child: Image.network(
                    'https://www.pngitem.com/pimgs/m/461-4615020_white-qr-code-png-transparent-png.png'),
              ),
              const Text('Ձեր դրամապանակի QR կոդը')
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
            child: Text('ID: 49452939',
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center),
          )  ,
        ),
        
      ],
    );
  }
}
