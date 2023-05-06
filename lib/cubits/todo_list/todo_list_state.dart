part of 'filtered_todos_list.dart';

class TodoListState extends Equatable{
  final List<Todo>todos;

  const TodoListState({required this.todos});

  factory TodoListState.initial(){
    return TodoListState(todos: [
      Todo(id: '1', desc: 'say hello to miaw cat'),
      Todo(id: '2', desc: 'say hello to tamy cat'),
      Todo(id: '3', desc: 'say hello to mochi puppy'),
    ]);
  }

  @override
  List<Object> get props => [todos];

  TodoListState copyWith({
    List<Todo>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  String toString() {
    return 'TodoListState{todos: $todos}';
  }
}