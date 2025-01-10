import 'package:forms_app/counter/presentation/screens/counter_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:forms_app/public/home/screens/home_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
    builder: (context, state, child) {
      return HomeScreen(childView: child);
    },
    
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const CounterScreen();
        },
      )
    ],
  )
]);
