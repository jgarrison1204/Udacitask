require_relative 'todolist.rb'


# Creates a new todo list
my_list = TodoList.new("Jacob's To Do List:")

my_list.add_item("a", "Monday")
my_list.add_item("b", "Tuesday")
my_list.add_item("c", "Monday")
my_list.add_item("d", "Wed")

# Print the list
my_list.print_list

#Delete shit
my_list.delete_item(0)

# Print the list
my_list.print_list

# Delete the second item
my_list.delete_item(1)

# Print the list
my_list.print_list

# Update the completion status of the first item to complete
my_list.update_status(0)

# Update the title of the list
my_list.new_title("New Title To Do List:")

# Print the list
my_list.print_list
