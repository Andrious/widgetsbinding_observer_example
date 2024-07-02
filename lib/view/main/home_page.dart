//

import '/src/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    assert(() {
      if (kDebugMode) {
        print('###########  build() in $this');
      }
      return true;
    }());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Text(
                'Home',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () async {
                  // final app =
                  //     context.findAncestorWidgetOfExactType<MaterialApp>()!;
                  // if (app.routerDelegate == null && app.routerConfig == null) {
                  //   await Navigator.pushNamed(context, '/page1');
                  // } else {
                  //   await context.push('/page1');
                  // }
                  await context.push('/page1');
                },
                child: const Text('Page 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
