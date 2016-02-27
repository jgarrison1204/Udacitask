class TodoList
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new # Starts empty! No Items yet!
  end

  def rename_title(new_title)
    @title = new_title
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items << item
  end

  def delete_item(index)
    @items.delete_at(index)
  end
end

class Item
  attr_accessor :description, :completed_status

  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end

  def print_stuff
    puts @description
  end


  def due_date

  end

  def completed?
    if @completed_status == true
      #do something
    else
      #do somethine else
    end
  end


end
