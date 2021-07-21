import 'package:flutter/material.dart';
import 'package:todolist/di/di.dart';

import 'package:mobx/mobx.dart';

abstract class WidgetStateless<Controller extends Store>
    extends StatelessWidget {
  final Controller controller = getIt<Controller>();
}
