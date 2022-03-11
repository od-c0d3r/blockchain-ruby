require 'logger'
require_relative 'block'


class Blockchain
    Log = Logger.new(STDOUT)
    
    attr_reader :chain
    
    def initialize
        @chain = [create_genesis_block]
        @chain_pointer = 1
        Log.info('Blockchain created')
    end

    def get_latest_block
        @chain.last
    end

    def add_block new_block
        new_block.update_info get_latest_block.hash, @chain_pointer
        update_chain_pointer
        @chain << new_block
        Log.info("Block ID##{new_block.index} added to the Blockchain")
    end
    
    def create_block data
        Block.new(data)
    end

    private

    def update_chain_pointer
        @chain_pointer += 1 
    end

    def create_genesis_block
        Block.new('Genesis Block')
    end
end