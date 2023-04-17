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
    it '#append'
  end
end