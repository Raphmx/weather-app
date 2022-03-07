import 'package:flutter/material.dart';
import 'package:wheather_app/views/widgets/background_image_widget.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.main}) : super(key: key);

  final String main;

  @override
  Widget build(BuildContext context) {
    return main == "Clouds"
        ? const BackgroundImageWidget(
            image: 'assets/images/thunderstorm.jpg',
          )
        : main == "Thunderstorm"
            ? const BackgroundImageWidget(
                image: 'assets/images/thunderstorm.jpg')
            : main == "Drizzle"
                ? const BackgroundImageWidget(
                    image: 'assets/images/drizzle.jpg')
                : main == "Rain"
                    ? const BackgroundImageWidget(
                        image: 'assets/images/rainy.jpg')
                    : main == "Snow"
                        ? const BackgroundImageWidget(
                            image: 'assets/images/snow.jpg')
                        : main == "Clear"
                            ? const BackgroundImageWidget(
                                image: 'assets/images/clear.jpg')
                            : const BackgroundImageWidget(
                                image: 'assets/images/mist.jpg');
  }
}
