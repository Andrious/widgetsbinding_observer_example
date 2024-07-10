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
class CounterState<T extends CounterWidget> extends StateX<T>
    with ClassNameMixin {
  //
  CounterState({
    this.prevWidget,
    this.nextWidget,
    super.controller,
    super.runAsync,
    super.useInherited,
    bool? routeAware,
  }) : super(routeAware: routeAware ?? true);

  final String? prevWidget;
  final String? nextWidget;

  //
  // Allow external access
  int get counter => _counter;

  set counter(int? cnt) {
    if (cnt != null && cnt - _counter == 1) {
      _counter++;
    }
  }

  int _counter = 0;

  ColorScheme? colorScheme;

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

  /// Called by the [builder] method
  @override
  buildAndroid(context) {
    return Scaffold(
      appBar: AppBar(title: Text(App.appState?.title ?? '')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(bottom: 9.h),
                child: Text(
                  widget.title ?? '',
                  style: TextStyle(fontSize: 10.w),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: const Text('You have pushed the button this many times:'),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            RowButton(this),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('IncrementButton'),
        onPressed: () => setState(() => _counter++),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  /// Called by the [builder] method
  @override
  buildiOS(context) {
    colorScheme ??= Theme.of(context).colorScheme;
    return CupertinoPageScaffold(
      // A ScrollView that creates custom scroll effects using slivers.
      child: CustomScrollView(
        // A list of sliver widgets.
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(App.appState?.title ?? ''),
          ),
          // This widget fills the remaining space in the viewport.
          // Drag the scrollable area to collapse the CupertinoSliverNavigationBar.
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 9.h),
                    child: Text(
                      widget.title ?? '',
                      style: TextStyle(fontSize: 10.w),
                    ),
                  ),
                ),
                const Text('You have pushed the button this many times:'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 5.h),
                CupertinoButton(
                  key: const Key('IncrementButton'),
                  color: colorScheme?.primaryContainer,
                  onPressed: () => setState(() => _counter++),
                  child: Icon(
                    Icons.add,
                    color: colorScheme?.onPrimaryContainer,
                  ),
                ),
                RowButton(this),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget builder(BuildContext context) {
    assert(() {
      if (kDebugMode) {
        print('###########  build() in $className   counter: $_counter\n');
      }
      return true;
    }());
    return super.builder(context);
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
    super.detachedLifecycleState();
    assert(() {
      if (kDebugMode) {
        print('###########  detachedAppLifecycleState() in $className\n');
      }
      return true;
    }());
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

///
class RowButton extends StatelessWidget {
  const RowButton(this.state, {super.key});
  final CounterState state;
  @override
  Widget build(BuildContext context) {
    //
    final buttonRow = <Widget>[];

    Alignment alignment = Alignment.bottomCenter;

    if (state.prevWidget != null) {
      buttonRow.add(_prevButton(state.prevWidget!));
    } else {
      alignment = Alignment.bottomRight;
    }

    if (state.nextWidget != null) {
      buttonRow.add(_nextButton(state.nextWidget!));
    } else {
      alignment = Alignment.bottomLeft;
    }
    return buttonRow.isEmpty
        ? const SizedBox.shrink()
        : Align(
            alignment: alignment,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: buttonRow,
              ),
            ),
          );
  }

  Widget _prevButton(String title) {
    Widget widget = Text('Page $title');
    if (App.useMaterial) {
      widget = Flexible(
        child: ElevatedButton(
          key: Key(title),
          onPressed: () => Navigator.pop(state.context),
          child: widget,
        ),
      );
    } else {
      widget = CupertinoButton(
        key: Key(title),
        color: state.colorScheme?.primaryContainer,
        onPressed: () => Navigator.pop(state.context),
        child: Text(
          'Page $title',
          style: TextStyle(
            color: state.colorScheme?.onPrimaryContainer,
          ),
        ),
      );
    }
    return widget;
  }

  Widget _nextButton(String title) {
    Widget widget = Text('Page $title');
    if (App.useMaterial) {
      widget = Flexible(
        child: ElevatedButton(
          onPressed: () async {
            await state.context.push<void>('/page$title');
          },
          child: widget,
        ),
      );
    } else {
      widget = Flexible(
        child: CupertinoButton(
          color: state.colorScheme?.primaryContainer,
          onPressed: () async {
            await state.context.push<void>('/page$title');
          },
          child: Text(
            'Page $title',
            style: TextStyle(
              color: state.colorScheme?.onPrimaryContainer,
            ),
          ),
        ),
      );
    }
    return widget;
  }
}
