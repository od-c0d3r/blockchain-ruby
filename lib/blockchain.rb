require 'logger'
require_relative 'block'


class Blockchain
    Log = Logger.new(STDOUT)
    
    attr_reader :chain
    
    def initialize
        @chain = [create_genesis_block]
        @id_counter = 1
        Log.info('Blockchain created')
    end

    def get_latest_block
        @chain.last
    end

    def add_block new_block
        new_block.update_info get_latest_block.hash
        @chain << new_block
        Log.info("Block ID##{new_block.index} added to the Blockchain")
    end

    private

    def create_genesis_block
        Block.new(0,'genesis')
    end
end