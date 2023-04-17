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
      @head.create_next(node)
    end
  end

  def count
    count = 0
    unless @head.nil?
      count +=1
    end
    count
  end

  def to_string
    @head.data
  end
end