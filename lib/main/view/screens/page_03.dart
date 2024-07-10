//
import '/src/controller.dart';

//
import '/src/view.dart';

/// The second page displayed in this app.
class Page3 extends CounterWidget {
  const Page3({super.key, super.title = 'Page 3'});
  @override
  State createState() => _Page3State();
}

class _Page3State extends CounterState<Page3> {
  _Page3State()
      : super(controller: PageController(), prevWidget: '2', nextWidget: '4');
}
