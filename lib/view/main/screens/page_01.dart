//

import '/src/view.dart';

class Page1 extends CounterWidget {
  const Page1({super.key, super.title = 'Page 1'});
  @override
  State createState() => _Page1State();
}

class _Page1State extends CounterState<Page1> {
  @override
  void initState() {
    // Supply the next page
    nextWidget = '2';
    super.initState();
  }
}
