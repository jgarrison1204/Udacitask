
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
    @items.each do |items|
      items.print_items
    end
    puts "************************"
    puts
  end

  def add_item(new_item, completed_status = false)
    item = Item.new(new_item, completed_status)
    @items << item
  end

  def delete_item(index)
    @items.delete_at(index)
  end

  def update_status(index)
    @items[index].update_status
  end

  def new_title(list_title)
    @title = list_title
  end
end

class Item
  attr_accessor :description, :completed_status

  def initialize(item_description, completed_status)
    @description = item_description
    @completed_status = completed_status
  end

  def completed?
    @completed_status? "[X]" : "[ ]"
  end

  def update_status
   @completed_status = !@completed_status
  end

  def to_s
    "#{@description} #{completed?}"
  end

  def print_items
    puts "Completed:#{completed?} #{@description}"
  end
end
