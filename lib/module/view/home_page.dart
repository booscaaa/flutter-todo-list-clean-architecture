import 'package:todolist/module/controller/home_controller.dart';
import 'package:todolist/core/widget_stateless.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

class HomePage extends WidgetStateless<HomeController> {
  @override
  Widget build(BuildContext context) {
    controller.getTodoList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo list"),
        actions: [IconButton(icon: Icon(Icons.ac_unit), onPressed: () {})],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: controller.itens.length,
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Text(controller.itens[index].nome ?? 'aa'),
                ),
              );
            });
      }),
    );
  }
}
