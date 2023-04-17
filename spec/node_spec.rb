require './lib/node'

RSpec.describe Node do
  it 'exists and has attributes' do
    node = Node.new('plop')
    
    expect(node).to be_a(Node)
    expect(node.data).to eq('plop')
    expect(node.next_node).to eq(nil)
  end
  
  context 'instance methods' do
    it 'adds a next node' do
      node = Node.new('plop')
      node_2 = Node.new('splat')
      
      expect(node.next_node).to eq(nil)

      node.create_next(node_2)

      expect(node.next_node).to eq(node_2)
    end

    it '#clear_next' do
    node = Node.new('plop')
    node_2 = Node.new('splat') 
    node.create_next(node_2)
    node.clear_next

    expect(node.next_node).to eq(nil)
    end
  end
end