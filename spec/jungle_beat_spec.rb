require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it 'exists and has attributes' do
    jb = JungleBeat.new
    expect(jb.list).to be_a(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  context 'instance methods' do
    it '#append' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")

      expect(jb.list.head.data).to eq("deep")
      expect(jb.list.head.next_node.data).to eq('doo')
    end
    
    it '#count' do
      jb = JungleBeat.new
      jb.append("deep doo ditt")
      
      expect(jb.count).to eq(3)
      jb.append("woo hoo shu")

      expect(jb.count).to eq(6)
    end
  end
end