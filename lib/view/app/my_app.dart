//

import '/src/view.dart';

class MyApp extends AppStatefulWidget {
  MyApp({
    super.key,
    this.useRouterConfig,
  });

  final bool? useRouterConfig;

  @override
  AppState<StatefulWidget> createAppState() => _AppState();
}

class _AppState extends AppState<MyApp> {
  //
  _AppState()
      : super(
          title: 'Demo App',
          routes: {
            '/': (_) => const HomePage(),
            '/page1': (_) => const Page1(),
            '/page2': (_) => const Page2(),
            '/page3': (_) => const Page3(),
            '/page4': (_) => const Page4(),
            '/page5': (_) => const Page5(),
            '/page6': (_) => const Page6(),
            '/page7': (_) => const Page7(),
            '/page8': (_) => const Page8(),
            '/page9': (_) => const Page9(),
          },
          useRouterConfig: false,
        );

  @override
  RouterConfig<Object>? onRouterConfig() => GoRouter(
        observers: navigatorObservers,
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomePage();
            },
          ),
          GoRoute(
            path: '/page1',
            builder: (BuildContext context, GoRouterState state) {
              return const Page1();
            },
          ),
          GoRoute(
            path: '/page2',
            builder: (BuildContext context, GoRouterState state) {
              return const Page2();
            },
          ),
          GoRoute(
            path: '/page3',
            builder: (BuildContext context, GoRouterState state) {
              return const Page3();
            },
          ),
          GoRoute(
            path: '/page4',
            builder: (BuildContext context, GoRouterState state) {
              return const Page4();
            },
          ),
          GoRoute(
            path: '/page5',
            builder: (BuildContext context, GoRouterState state) {
              return const Page5();
            },
          ),
          GoRoute(
            path: '/page6',
            builder: (BuildContext context, GoRouterState state) {
              return const Page6();
            },
          ),
          GoRoute(
            path: '/page7',
            builder: (BuildContext context, GoRouterState state) {
              return const Page7();
            },
          ),
          GoRoute(
            path: '/page8',
            builder: (BuildContext context, GoRouterState state) {
              return const Page8();
            },
          ),
          GoRoute(
            path: '/page9',
            builder: (BuildContext context, GoRouterState state) {
              return const Page9();
            },
          ),
        ],
        debugLogDiagnostics: true,
      );
}
