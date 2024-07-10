//

import '/src/controller.dart';

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

class _AppState extends AppState<MyApp> with ClassNameMixin {
  //
  _AppState()
      : super(
          title: 'Demo App',
//          useCupertino: true,
//          debugPaintSizeEnabled: true,
          routes: {
            '/': (_) => const Page1(),
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
        ) {
    className = '_AppState';
  }

  @override
  RouterConfig<Object>? onRouterConfig() => GoRouter(
        observers: navigatorObservers,
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (_, __) => const Page1(),
          ),
          GoRoute(
            path: '/page2',
            builder: (_, __) => const Page2(),
          ),
          GoRoute(
            path: '/page3',
            builder: (_, __) => const Page3(),
          ),
          GoRoute(
            path: '/page4',
            builder: (_, __) => const Page4(),
          ),
          GoRoute(
            path: '/page5',
            builder: (_, __) => const Page5(),
          ),
          GoRoute(
            path: '/page6',
            builder: (_, __) => const Page6(),
          ),
          GoRoute(
            path: '/page7',
            builder: (_, __) => const Page7(),
          ),
          GoRoute(
            path: '/page8',
            builder: (_, __) => const Page8(),
          ),
          GoRoute(
            path: '/page9',
            builder: (_, __) => const Page9(),
          ),
        ],
        debugLogDiagnostics: true,
      );

  @override
  void initState() {
    super.initState();
    assert(() {
      if (kDebugMode) {
        print('###########  initState() in $className\n');
      }
      return true;
    }());
  }

  /// Whenever it removes
  @override
  void deactivate() {
    assert(() {
      if (kDebugMode) {
        print('###########  deactivate() in $className\n');
      }
      return true;
    }());
    super.deactivate();
  }

  /// Called when this object is reinserted into the tree after having been
  /// removed via [deactivate].
  @override
  void activate() {
    super.activate();
    assert(() {
      if (kDebugMode) {
        print('###########  activate() in $className\n');
      }
      return true;
    }());
  }

  /// The framework calls this method when this [StateX] object will never
  /// build again.
  /// Note: YOU WILL HAVE NO IDEA WHEN THIS WILL RUN in the Framework.
  @override
  void dispose() {
    assert(() {
      if (kDebugMode) {
        print('###########  dispose() in $className\n');
      }
      return true;
    }());
    super.dispose();
  }

  /// Called when this State is *first* added to as a Route observer?!
  @override
  void didPush() {
    super.didPush();
    assert(() {
      if (kDebugMode) {
        print('###########  didPush() in $className\n');
      }
      return true;
    }());
  }

  /// New route has been pushed, and this State object's route is no longer current.
  @override
  void didPushNext() {
    super.didPushNext();
    assert(() {
      if (kDebugMode) {
        print('###########  didPushNext() in $className\n');
      }
      return true;
    }());
  }

  /// Called when this State is popped off a route.
  @override
  void didPop() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPop() in $className\n');
      }
      return true;
    }());
    super.didPop();
  }

  /// The top route has been popped off, and this route shows up.
  @override
  void didPopNext() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPopNext() in $className\n');
      }
      return true;
    }());
    super.didPopNext();
  }

  /// This method is also called immediately after [initState].
  /// Otherwise called only if this [State] object's Widget
  /// is a 'dependency' of [InheritedWidget].
  /// When a InheritedWidget's build() function is called
  /// the dependent widget's build() function is also called but not before
  /// their didChangeDependencies() function.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeDependencies() in $className\n');
      }
      return true;
    }());
  }

  /// Called when the application's dimensions change. For example,
  /// when a phone is rotated.
  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeMetrics() in $className\n');
      }
      return true;
    }());
  }

  /// Called when the platform's text scale factor changes.
  @override
  void didChangeTextScaleFactor() {
    super.didChangeTextScaleFactor();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeTextScaleFactor() in $className\n');
      }
      return true;
    }());
  }

  /// Brightness changed.
  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangePlatformBrightness() in $className\n');
      }
      return true;
    }());
  }

  /// Called when the system tells the app that the user's locale has changed.
  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeLocales() in $className\n');
      }
      return true;
    }());
  }

  /// Either be in the progress of attaching when the engine is first initializing
  /// or after the view being destroyed due to a Navigator pop.
  @override
  void detachedAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  detachedAppLifecycleState() in $className\n');
      }
      return true;
    }());
    super.detachedAppLifecycleState();
  }

  /// The application is visible and responding to user input.
  @override
  void resumedAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  resumedAppLifecycleState() in $className\n');
      }
      return true;
    }());
  }

  /// The application is in an inactive state and is not receiving user input.
  /// Apps in this state should assume that they may be [pausedLifecycleState] at any time.
  @override
  void inactiveAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  inactiveAppLifecycleState() in $className\n');
      }
      return true;
    }());
  }

  /// All views of an application are hidden, either because the application is
  /// about to be paused (on iOS and Android), or because it has been minimized
  /// or placed on a desktop that is no longer visible (on non-web desktop), or
  /// is running in a window or tab that is no longer visible (on the web).
  @override
  void hiddenAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  hiddenAppLifecycleState() in $className\n');
      }
      return true;
    }());
  }

  /// The application is not currently visible to the user, not responding to
  /// user input, and running in the background.
  @override
  void pausedAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  pausedAppLifecycleState() in $className\n');
      }
      return true;
    }());
    super.pausedAppLifecycleState();
  }

  /// Called when there's a memory constraint.
  @override
  void didHaveMemoryPressure() {
    super.didHaveMemoryPressure();
    assert(() {
      if (kDebugMode) {
        print('###########  didHaveMemoryPressure() in $className\n');
      }
      return true;
    }());
  }

  /// Called when the system changes the set of active accessibility features.
  @override
  void didChangeAccessibilityFeatures() {
    super.didChangeAccessibilityFeatures();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeAccessibilityFeatures() in $className\n');
      }
      return true;
    }());
  }
}
