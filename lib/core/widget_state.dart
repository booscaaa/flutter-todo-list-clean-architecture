import 'package:flutter/material.dart';
import 'package:todolist/di/di.dart';

import 'package:mobx/mobx.dart';

abstract class WidgetState<Widget extends StatefulWidget,
    Controller extends Store> extends State<Widget> {
    final Controller controller = getIt<Controller>();
}
