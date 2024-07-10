//
import '/src/controller.dart';

class Page7Controller extends PageController {
  factory Page7Controller() => _this ??= Page7Controller._();
  Page7Controller._() {
    className = 'Page7Controller';
  }
  static Page7Controller? _this;

  @override
  void initState() {
    super.initState();
    helper = Helper05Controller();
    helper?.addState(state);
  }

  Helper05Controller? helper;
}
