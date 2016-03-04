require_relative 'TodoList.rb'

# Creates a new todo list
my_list = TodoList.new("Jacob's To Do List:")

my_list.add_item("Go to the gym.", "Monday")
my_list.add_item("Make a plan to fix the Lakers.", "Monday")
my_list.add_item("Take out the trash.", "Monday")
my_list.add_item("Drink heavily after I realize their is no hope for the Lakers.", "Monday")

# Print the list
my_list.print_list

# Delete the first item
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
my_list.new_title("Basketball Sadness:")

# Print the list
my_list.print_list

#EXTRA FEATURE Print latest todo list to file
my_list.print_final_item_todo(1)
