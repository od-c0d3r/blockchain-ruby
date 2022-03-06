require 'digest'

class Block
  attr_reader :hash

  def initialize(index, data, timestamp= Time.now.inspect, previous_hash='')
    @index = index
    @data = data
    @timestamp = timestamp
    @previous_hash = previous_hash
    @hash = calculate_hash
  end

  private

  def calculate_hash
    Digest::SHA256.hexdigest @index.to_s + @data.to_s + @timestamp.to_s + @previous_hash.to_s
  end
end
