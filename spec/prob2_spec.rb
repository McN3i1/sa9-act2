require 'prob2'

RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        todo_list = TodoList.new
        todo_list.add("Get gas")
        expect(todo_list.todos). to include("Get gas")
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo_list = TodoList.new
        todo_list.add("Get gas")
        todo_list.remove("Get gas")
       expect(todo_list.todos).not_to include("Get gas")
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todo_list = TodoList.new
        todo_list.add("Get gas")
        todo_list.add("Buy groceries")
        expect(todo_list.todos).to eq(["Get gas", "Buy groceries"])
        end
    end
end
  