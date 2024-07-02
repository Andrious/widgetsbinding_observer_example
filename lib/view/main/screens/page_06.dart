//

import '/src/view.dart';

/// The second page displayed in this app.
class Page6 extends CounterWidget {
  const Page6({super.key, super.title = 'Page 6'});
  @override
  State createState() => _Page6State();
}

class _Page6State extends CounterState<Page6> {
  @override
  void initState() {
    prevWidget = '5';
    nextWidget = '7';
    super.initState();
  }
}
