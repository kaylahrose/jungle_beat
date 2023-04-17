class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      current_node = @head
      new_node = Node.new(data)
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.create_next(new_node)
    end
  end

  def count
    count = 0
    unless @head.nil?
      count +=1
      pointer = @head.next_node
      while pointer
        count +=1
        pointer = pointer.next_node 
      end
    end
    count
  end

  def to_string
    # TODO: inject next node data
    string = @head.data
    next_node = @head.next_node
    while next_node
      string += ' ' + next_node.data
      next_node = next_node.next_node
    end
    string
  end

  def prepend(data)
    node = Node.new(data)
    node.create_next(@head)
    @head = node
  end

  def insert(position, data)
    pointer = @head
    (position - 1).times do 
      pointer = pointer.next_node
    end
    new_node = Node.new(data, pointer.next_node)
    pointer.create_next(new_node)
  end

  def find(position, amount)
  end
end