//
import '/src/controller.dart';

//
import '/src/view.dart';

/// The second page displayed in this app.
class Page7 extends CounterWidget {
  const Page7({super.key, super.title = 'Page 7'});
  @override
  State createState() => _Page7State();
}

class _Page7State extends CounterState<Page7> {
  _Page7State()
      : super(controller: Page7Controller(), prevWidget: '6', nextWidget: '8') {
    addList([
      Helper01Controller(),
      Helper02Controller(),
      Helper03Controller(),
      Helper04Controller(),
    ]);
  }
}
