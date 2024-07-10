//
import '/src/view.dart';

class Page1 extends CounterWidget {
  const Page1({super.key, super.title = 'Page 1'});
  @override
  State createState() => _Page1State();
}

class _Page1State extends CounterState<Page1> {
  _Page1State() : super(nextWidget: '2');
}
