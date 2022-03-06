require 'blockchain'

RSpec.describe Blockchain do
    let(:new_blockchain) { Blockchain.new() }

    context '#initialize' do
        it 'creates a new Blockchain instance' do
            expected = new_blockchain
            
            expect(expected).to be_an_instance_of Blockchain
        end
        it 'creates genesis block' do
            expected = new_blockchain.get_latest_block.data
            
            expect(expected).to eq 'genesis'
        end
    end

    context '#get_latest_block' do
        it 'returns the latest block on the chain' do
            expected = new_blockchain.chain.last

            expect(expected).to eq new_blockchain.get_latest_block
        end
    end
end