class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      require 'pry'; binding.pry
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