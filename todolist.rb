class TodoList
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  # prints the list of items with an indicator of whether it is completed or not
  def print_list
    puts "#{@title}"
    puts "************************"
    puts @items
    puts "************************"
  end

  def add_item(new_item, completed_status = false, due_date)
    item = Item.new(new_item, completed_status, due_date)
    @items << item
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def update_status(index)
    @items[index].update_status
    p @items
  end

  def new_title(list_title)
    @title = list_title
  end
end

class Item
  attr_accessor :description, :completed_status, :due_date

  def initialize(item_description, completed_status, due_date)
    @description = item_description
    @completed_status = completed_status
    @due_date = due_date
  end

  def completed?
    @completed_status? "[X]" : "[ ]"
  end

  def update_status
   @completed_status = !@completed_status
  end

  def to_s
    "#{@description} #{due_date} #{completed?}"
  end
end

#def increment
#@increment = @items.length
#@counter = 0
#while @counter < @increment
#@item_number = @counter += 1
#puts @item_number
#end
#end
