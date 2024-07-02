//

import '/src/view.dart';

/// The second page displayed in this app.
class Page5 extends CounterWidget {
  const Page5({super.key, super.title = 'Page 5'});
  @override
  State createState() => _Page5State();
}

class _Page5State extends CounterState<Page5> {
  @override
  void initState() {
    prevWidget = '4';
    nextWidget = '6';
    super.initState();
  }
}
