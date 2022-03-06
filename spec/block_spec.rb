require 'block'

RSpec.describe Block, '#initialize' do
    let(:new_block) { Block.new(1,{data: "some data"}) }
    
    it "creates a new Block instance" do
        expected = new_block

        expect(expected).to be_an_instance_of Block
    end
    it "generate a unique hash for the block" do
        expected = new_block.hash
        another_block = Block.new(2,{data: "another data"})

        expect(expected.length).to eq 64
        expect(expected).to be_an_instance_of String
        expect(expected).to_not eq another_block.hash
    end
end
