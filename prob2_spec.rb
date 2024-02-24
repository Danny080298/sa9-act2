
require_relative 'prob2'

RSpec.describe TodoList do
    
  
    describe "#add" do
      it "adds a todo to the list" do
        todo_list = TodoList.new
        todo_list.add("Do homework")
        expect(todo_list.todos.last).to eq('Do homework')

      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo_list = TodoList.new
        todo_list.add("Do housework")
        todo_list.remove("Do Homework")
        expect(todo_list.todos).not_to eq('Buy flower')
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todo_list = TodoList.new
        todo_list.add("Do homework")
        todo_list.add("Sleep")
        expect(todo_list.todos).to eq(["Do homework", "Sleep"])
      end
    end
  end
  