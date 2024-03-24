// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/todo.dart';
import '../widgets/todo_items.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),

        backgroundColor: Colors.yellow[300],

        body:
        Container(
          padding:
          EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child:
          Column(
            children: [
              _searchBar(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 0, right: 150),
                      child:
                      Text('All To-Dos', style: TextStyle(color: Colors.black
                          , fontSize: 30, fontWeight: FontWeight.w500),),
                    ),
                    for (ToDo todoo in todoList)
                      ToDoItem(
                        todo: todoo,
                        onChangeToDo: _handleToDoChanges,
                        onDeleteToDo: _handleToDoDelete,
                      ),
                  ],
                ),
              ),
              _AddItems(),
            ],
          ),
        )
    );
  }

  void _handleToDoChanges(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleToDoDelete(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _additems(String todo) {
    setState(() {
      todoList.add(ToDo(id: DateTime.now().microsecondsSinceEpoch.toString(),
          todoText: todo));
    });
    _todoController.clear();

  }


  _AddItems() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child:
            Container(
              margin: EdgeInsets.only(bottom: 2, left: 5, right: 5),
              height: 45,
              decoration:
              BoxDecoration(
                boxShadow:
                const[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child:
              TextField(
                controller: _todoController,
                decoration: InputDecoration(
                  hintText: "      Add the new item",
                ),
              ),
            ),
            ),
            Container(
                margin: EdgeInsets.only(right: 5),
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    _additems(_todoController.text);
                  },
                  child: Text("+", style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.w600),),
                )

            )
          ],
        ),
      ],
    );
  }
}



YourFlexibleChild() {

  return
Column(
children: [
Column(
children: [
Container(
margin: EdgeInsets.only(top: 40,left: 0,right: 150),
child:
Text('All To-Dos',style: TextStyle(color: Colors.black
, fontSize: 30, fontWeight: FontWeight.w500),),
)
],
)
],
);
}



_searchBar() {

  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
       margin: EdgeInsets.only(top: 20,right: 10, left: 10),
        padding: EdgeInsets.only(top: 15, right: 15),
        height:  45,

        // color: Colors.white,
        decoration: BoxDecoration(
          boxShadow: const[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50),
          topLeft: Radius.circular(50), bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))
        ),
        child:

        Container(
          padding: EdgeInsets.symmetric(horizontal: 12 ),

          height: 40,
          margin: EdgeInsets.only(bottom: 2,left: 13,top: 2),
          child: TextField(
            decoration: InputDecoration(

              hintText: 'Enter the text here',
              prefixIcon: Icon(Icons.search_rounded,),
              prefixIconConstraints: BoxConstraints(maxHeight: 20,minHeight: 20)
            ),
          ),

        ),
      )
    ],
  );

}




AppBar _buildAppBar() {
   return AppBar( backgroundColor: Colors.yellow[300],
  elevation: 0,
  title: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Icon(Icons.menu_outlined, size: 30, color: Colors.black,),
  Container(
  child: Text('TO-DO App' , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w900),),
  ),
  Icon(Icons.menu_book_rounded, size : 35, color: Colors.black,),
  ],
  ),
  );

}






// return
// Column(
// children: [
// Column(
// children: [
// Container(
// margin: EdgeInsets.only(top: 40,left: 0,right: 150),
// child:
// Text('All To-Dos',style: TextStyle(color: Colors.black
// , fontSize: 30, fontWeight: FontWeight.w500),),
// )
// ],
// )
// ],
// );