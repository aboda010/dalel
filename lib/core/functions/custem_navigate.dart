import 'package:go_router/go_router.dart';

void custemNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
