//
//   Superclass for CounterState
//

import 'dart:ui' show AppExitResponse;

import '/src/view.dart';

abstract class StateX<T extends StatefulWidget> extends State<T>
    with RouteAware
    implements WidgetsBindingObserver {
  StateX() : stateRouteObserver = StateXRouteObserver() {
    currentState = this;
  }

  final StateXRouteObserver stateRouteObserver;

  static late StateX currentState;

  // Whether the State object will remain active.
  static bool? keepActive = true;

  // Indicating if this State object is currently actively visible to the user.
  bool get canSetState => _canSetState;

  set canSetState(bool? set) {
    if (set != null) {
      if (keepActive!) {
        _canSetState = true;
      } else {
        _canSetState = set;
      }
    }
  }

  // Allow the setState() method to fire.
  bool _canSetState = true;

  /// The framework will call this method exactly once.
  /// Only when the [StateX] object is first created.
  /// Override this method to perform initializations.
  @override
  void initState() {
    super.initState();
    assert(() {
      if (kDebugMode) {
        print('\n\r###########  initState() in $this');
      }
      return true;
    }());
    // Register lifecycle observers
    _addObservers();
    assert(() {
      if (kDebugMode) {
        print('              _addObservers() in $this');
      }
      return true;
    }());
    app ??= context.findAncestorWidgetOfExactType<MaterialApp>()!;
  }

  static MaterialApp? app;

  /// Called when immediately after [initState].
  /// Otherwise called only if a dependency of an [InheritedWidget]
  /// and that [InheritedWidget] is called again.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeDependencies() in $this');
      }
      return true;
    }());
    if (app!.routerDelegate != null || app!.routerConfig != null) {
      router ??= GoRouter.of(context);
    }
  }

  // Used to navigate from screen to screen.
  static GoRouter? router;

  /// Override this method to respond to when the [StatefulWidget] is recreated.
  /// The framework always calls build() after calling [didUpdateWidget].
  @override
  void didUpdateWidget(covariant T oldWidget) {
    assert(() {
      if (kDebugMode) {
        print('###########  didUpdateWidget() in $this');
      }
      return true;
    }());
    super.didUpdateWidget(oldWidget);
  }

  /// Called whenever the application is reassembled during a hot reload.
  /// The [build] method is invoked soon after.
  @override
  void reassemble() {
    super.reassemble();
    assert(() {
      if (kDebugMode) {
        print('###########  reassemble() in $this');
      }
      return true;
    }());
  }

  /// Called whenever it's being closed or moved in a ListView array.
  /// More reliable than dispose().
  /// You don't know when dispose() will be called as it's to the
  /// discretion of the operating system's garbage collection.
  @override
  void deactivate() {
    assert(() {
      if (kDebugMode) {
        print('###########  deactivate() in $this');
      }
      return true;
    }());
    assert(() {
      if (kDebugMode) {
        print('              _removeObservers() in $this');
      }
      return true;
    }());
    _removeObservers();
    super.deactivate();
  }

  /// You don't know when dispose() will be called as it's to the
  /// discretion of the operating system's garbage collection.
  @override
  void dispose() {
    assert(() {
      if (kDebugMode) {
        print('###########  dispose() in $this');
      }
      return true;
    }());
    super.dispose();
  }

  /// Determine if the setState() method should be called.
  @override
  void setState(VoidCallback fn) {
    if (canSetState && mounted) {
      assert(() {
        if (kDebugMode) {
          print('########### setState() in $this');
        }
        return true;
      }());
      super.setState(fn);
    }
  }

  /// Implement this
  @override
  Widget build(BuildContext context);

  /// This is not reliable in that any other 'observer' happens to return true
  /// will prevent this function from firing.  Use RouteObserver instead.
  @override
  Future<bool> didPopRoute() async {
    assert(() {
      if (kDebugMode) {
        print('###########  didPopRoute() in $this');
      }
      return true;
    }());
    return false;
  }

  /// This is not reliable in that any other 'observer' happens to return true
  /// will prevent this function from firing.  Use RouteObserver instead.
  @override
  Future<bool> didPushRoute(String route) async {
    assert(() {
      if (kDebugMode) {
        print('###########  didPushRoute() in $this');
      }
      return true;
    }());
    return false;
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    assert(() {
      if (kDebugMode) {
        print('###########  didPushRouteInformation() in $this');
      }
      return true;
    }());
    return didPushRoute(routeInformation.location!);
  }

  /// Called when the top route has been popped off, and this route now is visible.
  @override
  void didPopNext() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPopNext() in $this');
      }
      return true;
    }());
    currentState = this;
  }

  /// Called when the current route has been pushed.
  @override
  void didPush() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPush() in $this');
      }
      return true;
    }());
    currentState = this;
  }

  /// Called when the current route has been popped off.
  @override
  void didPop() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPop() in $this');
      }
      return true;
    }());
  }

  /// Called when a new route has been pushed, and the current route is no longer visible.
  @override
  void didPushNext() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPushNext() in $this');
      }
      return true;
    }());
  }

  /// The State object was deactivated but activated again.
  @override
  void activate() {
    assert(() {
      if (kDebugMode) {
        print('###########  activate() in $this');
      }
      return true;
    }());
    super.activate();
    // Register lifecycle observers
    _addObservers();
  }

  /// Called when the application's UI dimensions change.
  /// For example, when a phone is rotated.
  @override
  void didChangeMetrics() {
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeMetrics() in $this');
      }
      return true;
    }());
  }

  /// Called when the platform's text scale factor changes.
  /// For example, the font size changes.
  @override
  void didChangeTextScaleFactor() {
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeTextScaleFactor() in $this');
      }
      return true;
    }());
  }

  /// Brightness changed.
  @override
  void didChangePlatformBrightness() {
    assert(() {
      if (kDebugMode) {
        print('###########  didChangePlatformBrightness() in $this');
      }
      return true;
    }());
  }

  /// Called when the system tells the app that the user's locale has changed.
  @override
  void didChangeLocales(List<Locale>? locales) {
    /// Locale changed.
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeLocales() in $this');
      }
      return true;
    }());
  }

  /// Called when the system puts the app in the background or returns the app to the foreground.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        appLifecycleStateInactive();
        break;
      case AppLifecycleState.hidden:
        appLifecycleStateHidden();
        break;
      case AppLifecycleState.paused:
        appLifecycleStatePaused();
        break;
      case AppLifecycleState.detached:
        appLifecycleStateDetached();
        break;
      case AppLifecycleState.resumed:
        appLifecycleStateResumed();
        break;
      default:
    }
    assert(() {
      if (kDebugMode) {
        print(
            '########### ${state.toString().replaceFirst('AppLifecycleState.', '')} in $this');
      }
      return true;
    }());
  }

  /// Callbacks for specific events

  /// At least one view of the application is visible, but none have input
  /// focus. The application is otherwise running normally.
  void appLifecycleStateInactive() {}

  /// This corresponds to an application that is not in the foreground,
  /// but still has visible windows.
  /// On the web, this corresponds to an application that is running in a
  /// window or tab that does not have input focus.
  void appLifecycleStateHidden() {}

  /// The application is not currently visible to the user,
  /// and not responding to user input.
  void appLifecycleStatePaused() {}

  /// The application is still hosted by a Flutter engine but is detached from any host views.
  void appLifecycleStateDetached() {}

  /// A running application that has input focus and is visible.
  void appLifecycleStateResumed() {}

  /// Called when a request is received from the system to exit the application.
  /// Exiting the application can proceed with AppExitResponse.exit;
  /// Cancel and do not exit the application with AppExitResponse.cancel;
  @override
  Future<AppExitResponse> didRequestAppExit() async {
    assert(() {
      if (kDebugMode) {
        print('###########  didRequestAppExit() in $this');
      }
      return true;
    }());
    return AppExitResponse.exit;
  }

  /// Called when the system is running low on memory.
  @override
  void didHaveMemoryPressure() {
    assert(() {
      if (kDebugMode) {
        print('###########  didHaveMemoryPressure() in $this');
      }
      return true;
    }());
  }

  /// Called when the system platform changes the set of active accessibility features.
  @override
  void didChangeAccessibilityFeatures() {
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeAccessibilityFeatures() in $this');
      }
      return true;
    }());
  }

  /// Simply turn to the Router and determine the next page to go to.
  void nextRoute(String path) {
    //
    if (router == null) {
      Navigator.pushNamed(context, path);
    } else {
      router?.push(path);
    }
  }

  // Register lifecycle observers
  bool _addObservers() {
    // Subscribe this to make it aware of route changes
    final add = stateRouteObserver.subscribe(this);
    if (add) {
      // Registers the given object as a binding observer. Binding
      // observers are notified when various application events occur
      WidgetsBinding.instance.addObserver(this);
    }
    return add;
  }

  // Unregister lifecycle observers
  void _removeObservers() {
    // Unsubscribe this making it unaware of route changes
    stateRouteObserver.unsubscribe(this);
    // Unregister the given object as a binding observer.
    WidgetsBinding.instance.removeObserver(this);
  }
}

/// A helper class. Manages the use of a RouteObserver that subscribes State objects.
class StateXRouteObserver {
  // Supply the means to 'observe' the Flutter's routing mechanism
  static RouteObserver<Route> routeObserver = RouteObserver<Route>();

  bool subscribe(State state) {
    bool subscribed = state is RouteAware;
    if (subscribed) {
      Route<dynamic>? route;
      // In fact, doesn't pop a route. Returns true at the start.
      Navigator.popUntil(state.context, (r) {
        route = r;
        return true;
      });
      subscribed = route != null && route is Route;
      if (subscribed) {
        // So to be informed when there are changes to route.
        routeObserver.subscribe(state as RouteAware, route!);
      }
    }
    return subscribed;
  }

  bool unsubscribe(State state) {
    bool subscribed = state is RouteAware;
    if (subscribed) {
      routeObserver.unsubscribe(state as RouteAware);
    }
    return subscribed;
  }
}
