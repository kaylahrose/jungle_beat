class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    count = 0
    unless @head.nil?
      count +=1
    end
    count
  end

  
end