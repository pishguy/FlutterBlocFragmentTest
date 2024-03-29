import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fragment_bloc/fragment_bloc/bloc.dart';
import 'package:fragment_bloc/fragment_bloc/fragment.dart';
import 'package:fragment_bloc/fragment_routes.dart';

class Fragment1 extends StatefulWidget implements Fragment {
  String myname;
  @override
  State<Fragment1> createState() => _Fragment1();

  @override
  String getRouteName() {
    return FRAGMENT_1;
  }

  @override
  String getTitle() {
    return 'Fragment 1 Title';
  }

  @override
  String getParameter() {
    return 'aaaaaaaa';
  }

  @override
  void setData(String value) {
    myname = value;
  }
}

class _Fragment1 extends State<Fragment1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("${widget.myname}"),
          RaisedButton(
            child: Text('Navigate to fragment 2'),
            onPressed: () => BlocProvider.of<FragmentBloc>(context).dispatch(FragmentNavigateEvent(FRAGMENT_2,'this is my name')),
          )
        ],
      ),
    );
  }
}

// BlocProvider.of<FragmentBloc>(context).dispatch(FragmentNavigateEvent(index))
