//

import '/src/view.dart';

/// The second page displayed in this app.
class Page5 extends CounterWidget {
  const Page5({super.key, super.title = 'Page 5'});
  @override
  State createState() => _Page5State();
}

class _Page5State extends CounterState<Page5> {
  //
  _Page5State() : super(prevWidget: '4', nextWidget: '6', useInherited: true);

  @override
  void initState() {
    super.initState();
    assert(() {
      if (kDebugMode) {
        print('###########  WordPairs Timer on! in $this\n');
      }
      return true;
    }());

    /// With the mixin, setState() will not rebuild the whole interface again!
    wordPairsWidget = WordPairs(seconds: 3, state: this);
  }

  late WordPairs wordPairsWidget;

  /// It may be 'moved around' the Widget tree
  @override
  void activate() {
    super.activate();
    wordPairsWidget.activate();
    assert(() {
      if (kDebugMode) {
        print('###########  WordPairs Timer on! in $this\n');
      }
      return true;
    }());
  }

  /// Ensure to also 'deactivate' the word pairs package
  @override
  void deactivate() {
    wordPairsWidget.deactivate();
    super.deactivate();
    assert(() {
      if (kDebugMode) {
        print('###########  WordPairs Timer off! in $this\n');
      }
      return true;
    }());
  }

  /// New route has been pushed, and this State object's route is no longer current.
  @override
  void didPushNext() {
    super.didPushNext();
    wordPairsWidget.deactivate();
    assert(() {
      if (kDebugMode) {
        print('###########  WordPairs Timer off! in $this\n');
      }
      return true;
    }());
  }

  /// The top route has been popped off, and this route shows up.
  @override
  void didPopNext() {
    wordPairsWidget.activate();
    super.didPopNext();
    assert(() {
      if (kDebugMode) {
        print('###########  WordPairs Timer on! in $this\n');
      }
      return true;
    }());
  }

  @override
  buildAndroid(context) => Scaffold(
        appBar: AppBar(title: Text(widget.title ?? '')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.h),
                  child: Text(
                    widget.title ?? '',
                    style: TextStyle(fontSize: 10.w),
                  ),
                ),
              ),
              wordPairsWidget,
              Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child:
                    const Text('You have pushed the button this many times:'),
              ),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              RowButton(this),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => counter++),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );

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
                    padding: EdgeInsets.only(bottom: 5.h),
                    child: Text(
                      widget.title ?? '',
                      style: TextStyle(fontSize: 10.w),
                    ),
                  ),
                ),
                wordPairsWidget,
                const Text('You have pushed the button this many times:'),
                state(
                  (context) => Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 5.h),
                CupertinoButton(
                  key: const Key('IncrementButton'),
                  color: colorScheme?.primaryContainer,
                  onPressed: () {
                    setState(() => counter++);
                  },
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
}
