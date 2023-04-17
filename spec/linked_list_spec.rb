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

    context 'multiple elements' do
      it '#append' do
        list = LinkedList.new
        list.append('doop')
        list.append("deep")

        expect(list.head.next_node).to be_a(Node)
        expect(list.head.next_node.data).to eq('deep')
        expect(list.count).to eq(2)
        expect(list.to_string).to eq('doop deep')
      end 

      it '#prepend' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")      
        expect(list.count).to eq(3)
      end

      it '#insert' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop") 
        list.insert(1, "woo")

        expect(list.to_string).to eq("dop woo plop suu")
        expect(list.count).to eq(4)
      end
    end
  end
end