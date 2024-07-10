//

import '/src/view.dart';

/// The second page displayed in this app.
class Page9 extends CounterWidget {
  const Page9({super.key, super.title = 'Page 9'});
  @override
  State createState() => _Page9State();
}

class _Page9State extends CounterState<Page9> {
  _Page9State() : super(prevWidget: '8');
}
