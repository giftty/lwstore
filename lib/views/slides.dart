import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Slides extends StatelessWidget {
   Slides({super.key});

  var link1 =
      'https://d1z1smzgvvydhp.cloudfront.net/jt3_e6MENJ2zF_J0RIOT4W5bfHw=/1080x1080/smart/filters:format(webp)/https://cdn1.kingschat.online/uploads/media/564326f962c6c019fe000029/MFFXR3NTSUFBQXNOdjFkTXdXZEd6QT09/image_2048x2048(75).webp';

  @override
  Widget build(BuildContext context) {
    return 
        CarouselSlider(
       options: CarouselOptions(height: 200.0,autoPlay: true, viewportFraction: 1),
       
       items: [1,2,3,4,5].map((i) {
         return Builder(
           builder: (BuildContext context) {
        return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                link1,
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              ));
           },
         );
       }).toList(),
       );
  }
}
