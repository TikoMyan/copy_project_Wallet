import 'package:first_project/helpers/colors.dart';
import 'package:first_project/pages/transport_page.dart';
import 'package:first_project/widgets/other_services.dart';
import 'package:flutter/material.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'ԳՈՌ',
                  style: TextStyle(
                      color: AppColors.appBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.chevron_right_outlined, color: AppColors.appBlack)
              ],
            ),
            Text(
              'էքսպերտ',
              style: TextStyle(color: AppColors.appBlack, fontSize: 10),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: AppColors.appBlack,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: AppColors.appBlack,
            ),
          ),
        ],
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 129, 129, 129),
            // color: Color(0xffF3F5F5),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            iconSize: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Color(0xff37424A),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            balance(context),
            services(context),
            OtherServices(),
          ],
        ),
      ),
    );
  }

  Widget balance(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 160,
              decoration: BoxDecoration(
                color: const Color(0xffF3F5F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.remove_red_eye_sharp),
                    ],
                  ),
                  const Text('Հաշվեկշիռ'),
                  const Text('0.00 Դ'),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            'Համալրել',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: const Color(0xff6FD8FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('VISA | TELCELL'),
                  SizedBox(
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 30,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 30,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 60,
                            child: SizedBox(
                              height: 50,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  const Text('SHUTOV'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget services(BuildContext context) {
    return SizedBox(
      height: 160,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          serviceItem(
              title: 'Տրանսպորտ',
              subtitle: 'Ուղետոմսեր',
              bgColor: const Color(0xff22C1A3),
              imageURL:
                  'https://freepngimg.com/thumb/car/3-2-car-free-download-png-thumb.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TransportPage(),
                  ),
                );
              }),
          serviceItem(
              title: 'Իվենթներ',
              bgColor: const Color(0xffA48DC0),
              imageURL:
                  'https://www.esri.com/content/dam/esrisites/en-us/about/events/infrastructure-management-and-gis-conference/2023/imgis23-banner-large-fg.png',
              onTap: () {}),
          serviceItem(
              title: 'Տերմինալից',
              subtitle: 'համալրված',
              bgColor: const Color(0xffD75535),
              imageURL:
                  'https://www.pngmart.com/files/6/Transport-PNG-Photos.png',
              onTap: () {}),
          serviceItem(
              title: 'Վարկ',
              subtitle: 'Մեքենայի գրավադրմամբ',
              bgColor: const Color(0xff9778B7),
              imageURL: '',
              onTap: () {}),
          serviceItem(
              title: 'Զգոնությունդ',
              bgColor: const Color(0xff22C1A3),
              imageURL: '',
              onTap: () {}),
        ],
      ),
    );
  }

  Widget serviceItem(
      {required String title,
      String? subtitle,
      required Color bgColor,
      required String imageURL,
      required void Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 150,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bgColor,
        ),
        child: Stack(
          children: [
            if (imageURL.isNotEmpty)
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.contain,
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                if (subtitle != null)
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  addNewPayment(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: const Center(child: Text('HELOOO')),
          );
        });
  }
}
