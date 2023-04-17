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
        
        list.append("bop")
        
        expect(list.count).to eq(3)
        expect(list.head.next_node.next_node.data).to eq('bop')
        expect(list.to_string).to eq('doop deep bop')
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

      it '#find' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")
        expect(list.find(2, 1)).to eq('shi')
        expect(list.find(1, 3)).to eq('woo shi shu')
      end

      it '#include' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop") 

        expect(list.includes?("deep")).to eq(true)
        expect(list.includes?("dep")).to eq(false)
        expect(list.includes?("shu")).to eq(true)
      end

      it '#pop' do
        list = LinkedList.new
        list.append("deep")
        list.append("woo")
        list.append("shi")
        list.append("shu")
        list.append("blop")  

        expect(list.to_string).to eq("deep woo shi shu blop")

        list.pop
        list.pop

        expect(list.to_string).to eq("deep woo shi")
      end
    end
  end
end