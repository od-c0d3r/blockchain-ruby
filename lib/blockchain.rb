require 'block'

class Blockchain
    attr_reader :chain

    def initialize
        @chain = [create_genesis_block]
    end

    def get_latest_block
        @chain.last
    end

    def add_block new_block
        new_block.update_info get_latest_block.hash
        @chain << new_block
    end

    private

    def create_genesis_block
        Block.new(0,'genesis')
    end
end