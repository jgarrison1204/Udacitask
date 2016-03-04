class TodoList
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  # prints the arrary items and title.
  def print_list
    puts "#{@title}"
    puts "************************"
    @items.each do |items|
      items.print_items
    end
    puts "************************"
    puts
  end

  #Adds new items to Array.  Calls Item class to do so.
  def add_item(new_item, due_date, completed_status = false)
    item = Item.new(new_item, due_date, completed_status)
    @items << item
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def update_status(index)
    @items[index].update_status_item
  end

  def new_title(list_title)
    @title = list_title
  end

  #Prints recent to do list with only non-deleted tasks showing
  def print_to_file
    @print_to_file = File.new("To_Do_List.txt", "w+")
    @print_to_file.puts "Items on final To Do List:\r\n \r\n"
    @print_to_file.puts @items
  end

  def print_final_item_todo(final_item)
    @items[final_item].print_items
  end
end

class Item
  attr_accessor :description, :completed_status, :due_date

  def initialize(item_description, due_date, completed_status)
    @description = item_description
    @due_date = due_date
    @completed_status = completed_status
  end

  #Method that outputs a boolean.
  #@completed_status will always have True or False value.
  def completed?
    @completed_status
  end

  #Yields the opposite of the completed status.  Default status is false.
  def update_status_item
   @completed_status = !@completed_status
  end

  #Overwrites the to_s in puts when printing @title
  def to_s
    "#{completed?} #{@due_date} #{@description}"
  end

  #Prints the out put of items.  Placeholder for values as we call various methods from udacitask.rb
  #Turniary operator to return output for todo list
  def print_items
    puts "Completed:#{completed? ? "[X]" : "[ ]"}----Date due: #{@due_date}----Item: #{@description}"
  end
end
