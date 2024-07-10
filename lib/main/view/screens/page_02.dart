//

import '/src/view.dart';

/// The second page displayed in this app.
class Page2 extends CounterWidget {
  const Page2({super.key, super.title = 'Page 2'});
  @override
  State createState() => _Page2State();
}

class _Page2State extends CounterState<Page2> {
  _Page2State() : super(prevWidget: '1', nextWidget: '3');
}
