import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class Todo {
  final String title;
  final String description;
  Todo(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: TodosScreen (
        todos: List.generate(20, (item) => Todo('This is title todo $item', 'this is discription2222 todo kkkk $item')),
      ),
      theme: ThemeData.dark(),
    ),
  );
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(todo: todos[index]))
              );
            },
            trailing: new Icon(Icons.favorite,
            color: (index % 3 == 0 ) ? Colors.red : Colors.black45,
            ),
          );
        },
         
        ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Todo todo;
  DetailPage({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}