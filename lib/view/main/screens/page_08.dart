//

import '/src/view.dart';

/// The second page displayed in this app.
class Page8 extends CounterWidget {
  const Page8({super.key, super.title = 'Page 8'});
  @override
  State createState() => _Page8State();
}

class _Page8State extends CounterState<Page8> {
  @override
  void initState() {
    prevWidget = '7';
    nextWidget = '9';
    super.initState();
  }
}
