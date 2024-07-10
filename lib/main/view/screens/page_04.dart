//

import '/src/view.dart';

/// The second page displayed in this app.
class Page4 extends CounterWidget {
  const Page4({super.key, super.title = 'Page 4'});
  @override
  State createState() => _Page4State();
}

class _Page4State extends CounterState<Page4> {
  _Page4State() : super(prevWidget: '3', nextWidget: '5');
}
