class TodoList
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  def rename_title(list_title)
    @title = list_title
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
end

class Item
  attr_accessor :description, :completed_status, :due_date

  def initialize(item_description, completed_status, due_date)
    @description = item_description
    @completed_status = completed_status
    @due_date = due_date
  end

  def completed?
    @completed_status? "[X]" : "[]"
  end

  def to_s
    "#{completed?} #{@description} #{due_date}"
  end
end
