import 'package:flutter/material.dart';
import 'package:first_project/helpers/colors.dart';
// import 'package:first_project/widgets/other_services.dart';
// import 'package:first_project/widgets/bon_item.dart';

class BonPageWidget extends StatelessWidget {
  const BonPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SingleChildScrollView(
        
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              topButtom(
                  icon: const Icon(Icons.shopping_bag_rounded), text: 'Մարկետ'),
              topButtom(
                  icon: const Icon(Icons.signal_cellular_4_bar_rounded),
                  text: 'Իմ ապրանքներ'),
              topButtom(
                  icon: const Icon(Icons.sentiment_very_satisfied_sharp),
                  text: 'Հրավիրել ընկերներին'),
              topButtom(icon: const Icon(Icons.handshake), text: 'Գործընկերներ'),
              topButtom(
                  icon: const Icon(Icons.confirmation_number),
                  text: 'Միջոցառումներ'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top ապրանքներ'),
              Text('դիտել բոլորը'),
            ],
          ),
          
        ),
        
    Expanded(child: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
           bonItems(context),
              bonItems(context),
              bonItems(context),
              bonItems(context),
              bonItems(context),
              bonItems(context),
          ],
        ),
      ))
      ],
      
    );
    
  }

  Widget topButtom({required Icon icon, required String text}) {
    return Container(
      
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: icon,
          label: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
          
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.appLightGrey,
              foregroundColor: AppColors.appOrange),
              
              
        ));
  }
  Widget bonItems(context){
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 150,
      width: MediaQuery.of(context).size.width - 10,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color:AppColors.appLightGrey,
      ),
      child: Row(
        children: [
          SizedBox(
            
            width: 120,
            height:150,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
            
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    
                      width: 100 ,
                      height: 90,
                      child: Image.network(
                          'https://cdn.imgbin.com/9/13/6/imgbin-cafe-tea-coffee-cappuccino-drink-tea-AjzNsvV6s5GSEztKb3Le2wzP8.jpg')),
                  Text('data'),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    color: AppColors.appLightGrey,
                    child:  Text(
                      '3',
                      textAlign: TextAlign.center,
                      style: TextStyle(color:AppColors.appOrange,fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
            
          ),
          Expanded(
            
            child: Container(
              margin:EdgeInsets.only(top: 10),
              child: Column(
                
                children: [
                   Row(children: [
                    Icon(Icons.currency_bitcoin,color: AppColors.appOrange,),
                    const Expanded(
                      child: Text(
                        'asasasas asasasa asassssssasasasas asasa asasasasa',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(Icons.heart_broken_outlined,color: Colors.red,),
                  ]),
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'asasasas asasassasas asasasa asassssssasasasas asasa asasassasas asasasa asassssssasasasas asasa asasassasas asasasa asassssssasasasas asasa asasasa',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SliderTheme(
                      
                        data: SliderTheme.of(context).copyWith(
                          // activeTickMarkColor: Colors.transparent,
                          // disabledThumbColor: Colors.transparent,
                          // inactiveTickMarkColor: Colors.transparent,
                          // overlappingShapeStrokeColor: Colors.transparent,
                          minThumbSeparation: 0,
                          trackHeight: 15,
                          // thumbColor: Colors.transparent,
                          thumbShape: SliderComponentShape.noThumb,
                          // valueIndicatorColor: Colors.transparent,
                          // overlayColor: Colors.transparent,
                          // valueIndicatorShape: SliderComponentShape.noThumb,
                          showValueIndicator: ShowValueIndicator.never,
                          overlayShape: SliderComponentShape.noThumb,
                        ),
                        child: Slider(
                          autofocus: false,
                          value: 40,
                          onChanged: (value) {},
                          min: 0.0,
                          max: 100,
                          activeColor:AppColors.appOrange,
                          inactiveColor: Colors.black12,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    // Container(
    //   margin: const EdgeInsets.only(top: 7),
    //   // padding: const EdgeInsets.symmetric(vertical: 1),

    //   height: 120,
    //   width:MediaQuery.of(context).size.width -20 ,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     color: AppColors.appLightGrey,
    //   ),
    
    // );
  }
  
}
