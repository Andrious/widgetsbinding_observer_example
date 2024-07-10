//
import 'dart:ui';

import '/src/view.dart';

import '/src/controller.dart';

class PageController extends StateXController with ClassNameMixin {
  PageController([super.state]);

  /// The framework will call this method exactly once.
  /// Only when the [StateX] object is first created.
  @override
  void initState() {
    /// Override this method to perform initialization that depends on the
    /// location at which this object was inserted into the tree.
    /// (i.e. Subscribe to another object it depends on during [initState],
    /// unsubscribe object and subscribe to a new object when it changes in
    /// [didUpdateWidget], and then unsubscribe from the object in [dispose].
    super.initState();
    assert(() {
      if (kDebugMode) {
        print('=========== initState() in class, $className\n');
      }
      return true;
    }());
  }

  /// The framework calls this method whenever it removes this [StateX] object
  /// from the tree.
  @override
  void deactivate() {
    /// The framework calls this method whenever it removes this [State] object
    /// from the tree. It might reinsert it into another part of the tree.
    /// Subclasses should override this method to clean up any links between
    /// this object and other elements in the tree (e.g. if you have provided an
    /// ancestor with a pointer to a descendant's [RenderObject]).
    assert(() {
      if (kDebugMode) {
        print('=========== deactivate() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when this object is reinserted into the tree after having been
  /// removed via [deactivate].
  @override
  void activate() {
    /// In some cases, however, after a [State] object has been deactivated, the
    /// framework will reinsert it into another part of the tree (e.g., if the
    /// subtree containing this [State] object is grafted from one location in
    /// the tree to another due to the use of a [GlobalKey]). If that happens,
    /// the framework will call [activate] to give the [State] object a chance to
    /// reacquire any resources that it released in [deactivate]. It will then
    /// also call [build] to give the object a chance to adapt to its new
    /// location in the tree.
    ///
    /// The framework does not call this method the first time a [State] object
    /// is inserted into the tree. Instead, the framework calls [initState] in
    /// that situation.
    assert(() {
      if (kDebugMode) {
        print('=========== activate() in class, $className\n');
      }
      return true;
    }());
  }

  /// The framework calls this method when this [StateX] object will never
  /// build again.
  /// Note: YOU WILL HAVE NO IDEA WHEN THIS WILL RUN in the Framework.
  @override
  void dispose() {
    super.dispose();

    /// The framework calls this method when this [StateX] object will never
    /// build again. The [State] object's lifecycle is terminated.
    /// Subclasses should override this method to release any resources retained
    /// by this object (e.g., stop any active animations).
    assert(() {
      if (kDebugMode) {
        print('=========== dispose() in class, $className\n');
      }
      return true;
    }());
  }

  /// Override this method to respond to when the [StatefulWidget] is recreated.
  @override
  void didUpdateWidget(StatefulWidget oldWidget) {
    /// The framework always calls build() after calling [didUpdateWidget], which
    /// means any calls to [setState] in [didUpdateWidget] are redundant.
    assert(() {
      if (kDebugMode) {
        print('=========== didUpdateWidget() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when immediately after [initState].
  /// Otherwise called only if a dependency of an [InheritedWidget].
  @override
  void didChangeDependencies() {
    ///
    /// if a State object's [build] references an [InheritedWidget] with
    /// [context.dependOnInheritedWidgetOfExactType]
    /// its Widget is now a 'dependency' of that that InheritedWidget.
    /// Later, if that InheritedWidget's build() function is called, all its dependencies
    /// build() functions are also called but not before this method again.
    /// Subclasses rarely use this method, but its an option if needed.
    assert(() {
      if (kDebugMode) {
        print('=========== didChangeDependencies() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called whenever the application is reassembled during debugging, for
  /// example during hot reload.
  @override
  void reassemble() {
    /// Called whenever the application is reassembled during debugging, for
    /// example during hot reload.
    ///
    /// This method should rerun any initialization logic that depends on global
    /// state, for example, image loading from asset bundles (since the asset
    /// bundle may have changed).
    assert(() {
      if (kDebugMode) {
        print('=========== reassemble() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when the system tells the app to pop the current route.
  /// For example, on Android, this is called when the user presses
  /// the back button.
  ///
  /// Observers are notified in registration order until one returns
  /// true. If none return true, the application quits.
  ///
  /// Observers are expected to return true if they were able to
  /// handle the notification, for example by closing an active dialog
  /// box, and false otherwise. The [WidgetsApp] widget uses this
  /// mechanism to notify the [Navigator] widget that it should pop
  /// its current route if possible.
  ///
  /// This method exposes the `popRoute` notification from
  // ignore: comment_references
  /// [SystemChannels.navigation].
  @override
  Future<bool> didPopRoute() async {
    assert(() {
      if (kDebugMode) {
        print('=========== didPopRoute() in class, $className\n');
      }
      return true;
    }());
    return false;
  }

  /// Called when the host tells the app to push a new route onto the
  /// navigator.
  ///
  /// Observers are expected to return true if they were able to
  /// handle the notification. Observers are notified in registration
  /// order until one returns true.
  ///
  /// This method exposes the `pushRoute` notification from
  // ignore: comment_references
  /// [SystemChannels.navigation].
  @override
  Future<bool> didPushRoute(String route) async {
    assert(() {
      if (kDebugMode) {
        print('=========== didPushRoute() in class, $className\n');
      }
      return true;
    }());
    return false;
  }

  /// Called when this State is *first* added to as a Route observer?!
  @override
  void didPush() {
    assert(() {
      if (kDebugMode) {
        print('=========== didPush() in class, $className\n');
      }
      return true;
    }());
  }

  /// New route has been pushed, and this State object's route is no longer current.
  @override
  void didPushNext() {
    assert(() {
      if (kDebugMode) {
        print('=========== didPushNext() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when this State is popped off a route.
  @override
  void didPop() {
    assert(() {
      if (kDebugMode) {
        print('=========== didPop() in class, $className\n');
      }
      return true;
    }());
  }

  /// The top route has been popped off, and this route shows up.
  @override
  void didPopNext() {
    assert(() {
      if (kDebugMode) {
        print('=========== didPopNext() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when the application's UI dimensions change.
  /// For example, when a phone is rotated.
  @override
  void didChangeMetrics() {
    /// Called when the application's dimensions change. For example,
    /// when a phone is rotated.
    ///
    /// In general, this is not overridden often as the layout system takes care of
    /// automatically recomputing the application geometry when the application
    /// size changes
    ///
    /// This method exposes notifications from [Window.onMetricsChanged].
    /// See sample code below. No need to call super if you override.
    ///   @override
    ///   void didChangeMetrics() {
    ///     setState(() { _lastSize = ui.window.physicalSize; });
    ///   }
    assert(() {
      if (kDebugMode) {
        print('=========== didChangeMetrics() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when the platform's text scale factor changes.
  @override
  void didChangeTextScaleFactor() {
    /// Called when the platform's text scale factor changes.
    ///
    /// This typically happens as the result of the user changing system
    /// preferences, and it should affect all of the text sizes in the
    /// application.
    ///
    /// This method exposes notifications from [Window.onTextScaleFactorChanged].
    /// See sample code below. No need to call super if you override.
    ///   @override
    ///   void didChangeTextScaleFactor() {
    ///     setState(() { _lastTextScaleFactor = ui.window.textScaleFactor; });
    ///   }
    assert(() {
      if (kDebugMode) {
        print('=========== didChangeTextScaleFactor() in class, $className\n');
      }
      return true;
    }());
  }

  /// Brightness changed.
  @override
  void didChangePlatformBrightness() {
    assert(() {
      if (kDebugMode) {
        print(
            '=========== didChangePlatformBrightness() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when the system tells the app that the user's locale has changed.
  @override
  void didChangeLocales(List<Locale>? locales) {
    /// Called when the system tells the app that the user's locale has
    /// changed. For example, if the user changes the system language
    /// settings.
    ///
    /// This method exposes notifications from [Window.onLocaleChanged].
    assert(() {
      if (kDebugMode) {
        print('=========== didChangeLocales() in class, $className\n');
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
        print('=========== detachedAppLifecycleState() in class, $className\n');
      }
      return true;
    }());
  }

  /// The application is visible and responding to user input.
  @override
  void resumedAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('=========== resumedAppLifecycleState() in class, $className\n');
      }
      return true;
    }());
  }

  /// The application is in an inactive state and is not receiving user input.
  ///
  /// On iOS, this state corresponds to an app or the Flutter host view running
  /// in the foreground inactive state. Apps transition to this state when in
  /// a phone call, responding to a TouchID request, when entering the app
  /// switcher or the control center, or when the UIViewController hosting the
  /// Flutter app is transitioning.
  ///
  /// On Android, this corresponds to an app or the Flutter host view running
  /// in the foreground inactive state.  Apps transition to this state when
  /// another activity is focused, such as a split-screen app, a phone call,
  /// a picture-in-picture app, a system dialog, or another window.
  ///
  /// Apps in this state should assume that they may be [pausedAppLifecycleState] at any time.
  @override
  void inactiveAppLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('========= inactiveAppLifecycleState() in class, $className\n');
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
        print('=========== hiddenAppLifecycleState() in class, $className\n');
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
        print('=========== pausedAppLifecycleState() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when the system is running low on memory.
  @override
  void didHaveMemoryPressure() {
    /// Called when the system is running low on memory.
    ///
    /// This method exposes the `memoryPressure` notification from
    /// [SystemChannels.system].
    assert(() {
      if (kDebugMode) {
        print('=========== didHaveMemoryPressure() in class, $className\n');
      }
      return true;
    }());
  }

  /// Called when a request is received from the system to exit the application.
  /// Exiting the application can proceed with
  ///    AppExitResponse.exit;
  /// Cancel and do not exit the application with
  ///    AppExitResponse.cancel;
  @override
  Future<AppExitResponse> didRequestAppExit() async {
    assert(() {
      if (kDebugMode) {
        print('=========== didRequestAppExit() in class, $className\n');
      }
      return true;
    }());
    return AppExitResponse.exit;
  }

  /// Called when the system changes the set of active accessibility features.
  @override
  void didChangeAccessibilityFeatures() {
    /// Called when the system changes the set of currently active accessibility
    /// features.
    assert(() {
      if (kDebugMode) {
        print(
            '=========== didChangeAccessibilityFeatures() in class, $className\n');
      }
      return true;
    }());
  }
}
