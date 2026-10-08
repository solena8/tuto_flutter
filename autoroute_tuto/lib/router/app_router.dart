import 'package:auto_route/auto_route.dart';
import 'package:autoroute_tuto/questions_list/questions_list_screen.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: QuizRoute.page, initial: true),
    AutoRoute(page: QuestionsListRoute.page, path: '/questions'),
    AutoRoute(page: QuestionDetailRoute.page, path: '/question-detail'),
  ];
}

