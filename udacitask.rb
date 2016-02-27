require_relative 'todolist.rb'


# Creates a new todo list
my_list = TodoList.new("Shit To Do:")

# Add four new items
my_list.add_item("Go to the gym")
my_list.add_item("Draw a plan to save the Lakers")
my_list.add_item("Drink heavily after realizing there is no hope for the Lakers")
my_list.add_item("Take out the trash")

# Print the list
puts my_list.title
my_list.print_items
puts

# Delete the first item
my_list.delete_item(0)

# Print the list
puts
my_list.print_items

# Delete the second item
my_list.delete_item(0)

# Print the list
puts
my_list.print_items

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list
rename_title("Fuck This!")


# Print the list
