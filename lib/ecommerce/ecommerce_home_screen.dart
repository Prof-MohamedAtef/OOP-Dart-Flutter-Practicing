import 'package:card_swiper/card_swiper.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';

class EcommerceHomePage extends StatelessWidget {
  EcommerceHomePage({super.key});

  final List<String> images = [
    "assets/image/mobile_iphone.jpeg",
    "assets/image/mobile_iphone_2.jpg",
    "assets/image/mobile_iphone_3.png",
    "assets/image/mobile_iphone_4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Home Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mobile Ads",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 300,
                    child: Swiper(
                      autoplay: true,
                      indicatorLayout: PageIndicatorLayout.COLOR,
                      pagination: const SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                            color: Colors.grey, activeColor: Colors.pink),
                      ),
                      control: const SwiperControl(
                        color: Colors.pink,
                      ),
                      itemBuilder: (contex, index) {
                        return Image.asset(images[index]);
                      } , itemCount: images.length,
                    ),
                  ),
                  const Text(
                    "Trucks",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  FanCarouselImageSlider(imagesLink: images, isAssets: true, autoPlay: true, ),
                  const Text(
                    "Offers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  // SizedBox(width: 100, height: 100,)
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                    //   // color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        // image: AssetImage("assets/image/mobile_iphone.jpeg")
                        image: NetworkImage("https://www.zdnet.com/a/img/resize/7c135e7748ad80aa72743c58c1d067ba1a0fddcf/2023/10/06/4e7663f4-fe43-424e-8fde-64a5612cdfd7/img-1950.jpg?auto=webp&width=1280")
                      )
                      // gradient: LinearGradient(
                      //   begin: Alignment.center,
                      //   end: Alignment.bottomRight,
                      //   colors: [
                      //     Colors.pink,
                      //     Colors.amber,
                      //     Colors.green
                      //   ]
                      // )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Image.network("https://www.zdnet.com/a/img/resize/7c135e7748ad80aa72743c58c1d067ba1a0fddcf/2023/10/06/4e7663f4-fe43-424e-8fde-64a5612cdfd7/img-1950.jpg?auto=webp&width=1280"),
                  const SizedBox(height: 20,),
                  Image.asset("assets/image/mobile_iphone.jpeg", width: 100, height: 100, fit: BoxFit.cover,),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const SizedBox(
                        width: 150,
                        height: 150,
                        child: Image(image: AssetImage("assets/image/mobile_iphone.jpeg",),),
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://www.zdnet.com/a/img/resize/7c135e7748ad80aa72743c58c1d067ba1a0fddcf/2023/10/06/4e7663f4-fe43-424e-8fde-64a5612cdfd7/img-1950.jpg?auto=webp&width=1280")
                          )
                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
