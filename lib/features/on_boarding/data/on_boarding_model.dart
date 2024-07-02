import 'package:dalel/core/utils/app_assets.dart';

class OnBoardingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBoardingModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}

List<OnBoardingModel> onBoardingDate = [
  OnBoardingModel(
    title: 'Explore The history with \n    Dalel in a smart way',
    subTitle:
        '    Using our app’s history libraries\nyou can find many historical periods ',
    image: Assets.imagesOnBording1,
  ),
  OnBoardingModel(
    title: 'From every place on earth',
    subTitle: 'A big variety of ancient places from all over the world',
    image: Assets.imagesOnBording2,
  ),
  OnBoardingModel(
    title: 'Using modern AI technology for better user experience',
    subTitle:
        'AI provide recommendations and helps you to continue the search journey ',
    image: Assets.imagesOnBording3,
  ),
];
