class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(' ').each do |element|
      @list.append(element) 
    end
  end

  def count
    @list.count
  end
end