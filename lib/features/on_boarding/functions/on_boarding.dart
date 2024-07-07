
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void IsOnBoardingVisited(){


 getIt<CacheHelper>().saveData(key: 'IsOnBoardingVisited', value: true);


}