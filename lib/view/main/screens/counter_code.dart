//
//     Superclass for the Counters
//

import '/src/view.dart';

abstract class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, this.title});
  final String? title;
  @override
  State createState();
}

/// Supplies a counter and interface to the widgets above.
class CounterState<T extends CounterWidget> extends StateX<T> {
  //
  CounterState() : super(routeAware: true);
  //
  int _counter = 0;

  // Subclass will assign a value
  String? prevWidget;
  String? nextWidget;

  final buttonRow = <Widget>[];

  @override
  void initState() {
    super.initState();
    assert(() {
      if (kDebugMode) {
        print('###########  initState() in $this\n');
      }
      return true;
    }());
    if (prevWidget != null) {
      buttonRow.add(_prevButton(prevWidget!));
    }
    if (nextWidget == null) {
      buttonRow.add(const SizedBox());
    } else {
      buttonRow.add(_nextButton(nextWidget!));
    }
  }

  @override
  Widget build(BuildContext context) {
    assert(() {
      if (kDebugMode) {
        print('###########  build() in $this   counter: $_counter\n');
      }
      return true;
    }());
    return Scaffold(
      appBar: AppBar(title: Text(widget.title ?? '')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 90),
                child: Text(
                  widget.title ?? '',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('You have pushed the button this many times:'),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (buttonRow.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: buttonRow,
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _prevButton(String title) => Flexible(
        child: ElevatedButton(
          key: Key(title),
          onPressed: () async {
            Navigator.pop(context);
          },
          child: Text('Page $title'),
        ),
      );

  Widget _nextButton(String widget) => Flexible(
        child: ElevatedButton(
          onPressed: () async {
            await context.push<void>('/page$nextWidget');
          },
          child: Text('Page $nextWidget'),
        ),
      );

  /// Whenever it removes
  @override
  void deactivate() {
    assert(() {
      if (kDebugMode) {
        print('###########  deactivate() in $this\n');
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
        print('###########  activate() in $this\n');
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
        print('###########  dispose() in $this\n');
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
        print('###########  didPush() in $this\n');
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
        print('###########  didPushNext() in $this\n');
      }
      return true;
    }());
  }

  /// Called when this State is popped off a route.
  @override
  void didPop() {
    assert(() {
      if (kDebugMode) {
        print('###########  didPop() in $this\n');
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
        print('###########  didPopNext() in $this\n');
      }
      return true;
    }());
    super.didPopNext();
  }

  /// Called when the application's dimensions change. For example,
  /// when a phone is rotated.
  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    assert(() {
      if (kDebugMode) {
        print('###########  didChangeMetrics() in $this\n');
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
        print('###########  didChangeTextScaleFactor() in $this\n');
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
        print('###########  didChangePlatformBrightness() in $this\n');
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
        print('###########  didChangeLocales() in $this\n');
      }
      return true;
    }());
  }

  /// Either be in the progress of attaching when the engine is first initializing
  /// or after the view being destroyed due to a Navigator pop.
  @override
  void detachedLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  detachedLifecycleState() in $this\n');
      }
      return true;
    }());
  }

  /// The application is visible and responding to user input.
  @override
  void resumedLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  resumedLifecycleState() in $this\n');
      }
      return true;
    }());
  }

  /// The application is in an inactive state and is not receiving user input.
  /// Apps in this state should assume that they may be [pausedLifecycleState] at any time.
  @override
  void inactiveLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  inactiveLifecycleState() in $this\n');
      }
      return true;
    }());
  }

  /// All views of an application are hidden, either because the application is
  /// about to be paused (on iOS and Android), or because it has been minimized
  /// or placed on a desktop that is no longer visible (on non-web desktop), or
  /// is running in a window or tab that is no longer visible (on the web).
  @override
  void hiddenLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  hiddenLifecycleState() in $this\n');
      }
      return true;
    }());
  }

  /// The application is not currently visible to the user, not responding to
  /// user input, and running in the background.
  @override
  void pausedLifecycleState() {
    assert(() {
      if (kDebugMode) {
        print('###########  pausedLifecycleState() in $this\n');
      }
      return true;
    }());
  }

  /// Called when there's a memory constraint.
  @override
  void didHaveMemoryPressure() {
    super.didHaveMemoryPressure();
    assert(() {
      if (kDebugMode) {
        print('###########  didHaveMemoryPressure() in $this\n');
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
        print('###########  didChangeAccessibilityFeatures() in $this\n');
      }
      return true;
    }());
  }
}
