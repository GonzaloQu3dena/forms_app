import 'package:go_router/go_router.dart';
import 'package:forms_app/public/home/screens/home_screen.dart';
import 'package:forms_app/iam/presentation/screens/sign_up_screen.dart';
import 'package:forms_app/counter/presentation/screens/bloc_counter_screen.dart';
import 'package:forms_app/counter/presentation/screens/cubit_counter_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/cubits',
      builder: (context, state) => const CubitCounterScreen(),
    ),
    GoRoute(
      path: '/bloc',
      builder: (context, state) => const BlocCounterScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);
