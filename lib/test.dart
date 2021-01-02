import 'package:flutter/material.dart';



// stateless widget
// immutable - static - fixed by user
class TestWidget extends StatelessWidget {
  final int id;

  const TestWidget({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text('${id}');
  }
}

// statefull widget
// mutable - dynamic - changeable by user
class Test2 extends StatefulWidget {
  final int id;

  const Test2({Key key, this.id}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Text('${widget.id}');
  }
}
