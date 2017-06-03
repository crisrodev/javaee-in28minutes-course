package com.in28minutes.todo;

import java.util.List;
import java.util.ArrayList;

public class TodoService {
	private static List<Todo> todos = new ArrayList<Todo>();
	static{
		todos.add(new Todo("Learn to cook", "Study"));
		todos.add(new Todo("Learn another thing", "Study"));
	}
	
	public List<Todo> retrieveTodos() {
		return todos;
	}
	
	public void addTodo(Todo todo){
		todos.add(todo);
	}
	
	public void deleteTodo(Todo todo){
		todos.remove(todo);
	}
	
}
