import 'package:flutter/material.dart';

import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onChangeToDo;
  final onDeleteToDo;
  const ToDoItem({Key? key, required this.todo, required this.onChangeToDo, required this.onDeleteToDo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,bottom:7),
      child: ListTile(
        onTap: (){
          print('Clicked on item list');
          onChangeToDo(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        tileColor: Colors.yellow[100],
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.green[800],),

        title: Text(todo.todoText!,  style: TextStyle(
            fontSize: 16,
          decoration: todo.isDone? TextDecoration.lineThrough : null,
        )),

        // ---------------------------------->>>>
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color : Colors.red[600],
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('Clicked on remove');
              onDeleteToDo(todo.id);
            },
          )
        ),
      )
    );
  }
}


