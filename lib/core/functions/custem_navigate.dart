import 'package:go_router/go_router.dart';

void custemPushReplaceNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
