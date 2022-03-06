require_relative './lib/block'
require_relative './lib/blockchain'

# Watch terminal logs for information

oreo_coin = Blockchain.new

transaction1 = {sender: 'you', receiver: 'me', amount: '4'}
block1 = Block.new(1, transaction1)
oreo_coin.add_block block1

transaction2 = {sender: 'you', receiver: 'me', amount: '100'}
block2 = Block.new(2, transaction2)
oreo_coin.add_block block2

pp oreo_coin.chain
