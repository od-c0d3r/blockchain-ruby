require 'digest'

class Block
  attr_reader :index, :data, :timestamp, :previous_hash, :hash
  attr_writer

  def initialize(index, data, previous_hash='', timestamp= Time.now.inspect)
    @index = index
    @data = data
    @timestamp = timestamp
    @previous_hash = previous_hash
    @hash = calculate_hash
  end

  def update_info previous_hash
    @previous_hash = previous_hash
    @hash = calculate_hash
  end

  private

  def calculate_hash
    Digest::SHA256.hexdigest @index.to_s + @data.to_s + @timestamp.to_s + @previous_hash.to_s
  end
end
