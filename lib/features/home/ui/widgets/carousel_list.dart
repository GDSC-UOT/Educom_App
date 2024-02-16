import 'package:ed_community/features/home/ui/widgets/carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

class CarouselList extends StatelessWidget {
  CarouselList({super.key});
  final InfiniteScrollController? controller = InfiniteScrollController(
    initialItem: 0,
  );
  final List<Widget> carouselImages = [
    const CarouselCard(
        title: "Postponing the exam",
        description:
            "Dear students, tomorrow's chemistry exam has been postponed until further notice",
        imageUrl: "assets/images/activityImage.png",
        subject: "Chemistery"),
    const CarouselCard(
        title: "Postponing the exam",
        description:
            "Dear students, tomorrow's chemistry exam has been postponed until further notice",
        imageUrl: "assets/images/activityImage.png",
        subject: "Chemistery 2"),
    const CarouselCard(
        title: "Postponing the exam",
        description:
            "Dear students, tomorrow's chemistry exam has been postponed until further notice",
        imageUrl: "assets/images/activityImage.png",
        subject: "Chemistery 3"),
    const CarouselCard(
        title: "Postponing the exam",
        description:
            "Dear students, tomorrow's chemistry exam has been postponed until further notice",
        imageUrl: "assets/images/activityImage.png",
        subject: "Chemistery 4"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.h,
      child: InfiniteCarousel.builder(
        itemCount: carouselImages.length,
        itemExtent: 325.w,
        velocityFactor: 0.2,
        onIndexChanged: (index) {},
        controller: controller,
        axisDirection: Axis.horizontal,
        loop: false,
        itemBuilder: (context, itemIndex, realIndex) {
          return carouselImages[itemIndex];
        },
      ),
    );
  }
}
