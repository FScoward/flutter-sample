import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (choose the "Toggle Debug Paint" action
          // from the Flutter Inspector in Android Studio, or the "Toggle Debug
          // Paint" command in Visual Studio Code) to see the wireframe for each
          // widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, World!',
            ),
            Text(
              'たむらまゆ'
            ),
            FlatButton(child: Text('flat button'), onPressed: () { showBasicDialog(context); },),
            RaisedButton(child: Text('raised button'), onPressed: () {},),
            OutlineButton(child: Text('outline button'), onPressed: () {},),
            AlertDialog(title: Text('ALERT'),)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

enum _DialogActionType {
  cancel,
  ok,
}
 
void showBasicDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => new AlertDialog(
          title: new Text("タイトル"),
          content: new Text("本文"),
          // ボタンの配置
          actions: <Widget>[
            new FlatButton(
                child: const Text('キャンセル'),
                onPressed: () {
                  Navigator.pop(context, _DialogActionType.cancel);
                }),
            new FlatButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.pop(context, _DialogActionType.ok);
                })
          ],
        ),
  ).then<void>((value) {
    // ボタンタップ時の処理
    switch (value) {
      case _DialogActionType.cancel:
        break;
      case _DialogActionType.ok:
        break;
      default:
    }
  });
}