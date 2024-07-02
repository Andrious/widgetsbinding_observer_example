//

import '/src/view.dart';

/// The second page displayed in this app.
class Page7 extends CounterWidget {
  const Page7({super.key, super.title = 'Page 7'});
  @override
  State createState() => _Page7State();
}

class _Page7State extends CounterState<Page7> {
  @override
  void initState() {
    prevWidget = '6';
    nextWidget = '8';
    super.initState();
  }
}
