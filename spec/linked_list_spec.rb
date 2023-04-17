require "./lib/linked_list"
require './lib/node'

RSpec.describe LinkedList do
  it 'exists and has attributes' do
    list = LinkedList.new

    expect(list).to be_a(LinkedList)
    expect(list.head).to eq(nil)
  end

  context 'instance methods' do
    it 'appends a node to a list' do
      list = LinkedList.new
      list.append('doop')

      expect(list.head).to be_a(Node)
      expect(list.head.data).to eq('doop')
      expect(list.head.next_node).to eq(nil)
      expect(list.count).to eq(1)
      expect(list.to_string).to eq('doop') 
    end
  end
end