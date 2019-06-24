import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bruce_app_demo/src/temp/you_awesome/index.dart';

class YouAwesomeScreen extends StatefulWidget {
  const YouAwesomeScreen({
    Key key,
    @required YouAwesomeBloc youAwesomeBloc,
  })  : _youAwesomeBloc = youAwesomeBloc,
        super(key: key);

  final YouAwesomeBloc _youAwesomeBloc;

  @override
  YouAwesomeScreenState createState() {
    return new YouAwesomeScreenState(_youAwesomeBloc);
  }
}

class YouAwesomeScreenState extends State<YouAwesomeScreen> {
  final YouAwesomeBloc _youAwesomeBloc;
  YouAwesomeScreenState(this._youAwesomeBloc);

  @override
  void initState() {
    super.initState();
    this._youAwesomeBloc.dispatch(LoadYouAwesomeEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YouAwesomeEvent, YouAwesomeState>(
        bloc: widget._youAwesomeBloc,
        builder: (
          BuildContext context,
          YouAwesomeState currentState,
        ) {
          if (currentState is UnYouAwesomeState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorYouAwesomeState) {
            return new Container(
              child: new Center(
              child: new Text(currentState.errorMessage ?? 'Error' ),
            ));
          }
          return new Container(
              child: new Center(
            child: new Text("В разработке"),
          ));
        });
  }
}
