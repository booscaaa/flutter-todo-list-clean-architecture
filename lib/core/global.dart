import 'package:flutter/widgets.dart';

final GlobalKey<NavigatorState> globalKey = GlobalKey<NavigatorState>();
BuildContext? get globalContext => globalKey.currentContext;
NavigatorState? get navigation => globalKey.currentState;
