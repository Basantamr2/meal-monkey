import 'package:meal_monkey/gen/assets.gen.dart';

class OnBoardingController {
  var images = [
    Assets.images.splashone.path,
    Assets.images.splashtwo.path,
    Assets.images.splashthree.path
  ];
  var titles = ["Find Food You Love", "Fast Delivery", "Live Tracking"];
  var hints = [
    "Discover the best foods from over 1,000 \n restaurants and fast delivery to your doorstep",
    "Fast food delivery to your home,\n office wherever you are",
    "Real time tracking of your food on the app\n once you placed the order"
  ];

  int current = 0;
}
