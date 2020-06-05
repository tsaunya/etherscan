require_relative 'api'

module Etherscan
  class Proxy < Etherscan::Api
    def eth_get_transaction_by_hash(tx_hash)
      params = {
        module: 'proxy', action: 'eth_getTransactionByHash',
        txhash: tx_hash
      }
      get(params)
    end

    def eth_get_transaction_receipt(tx_hash)
      params = {
        module: 'proxy', action: 'eth_getTransactionReceipt',
        txhash: tx_hash
      }
      get(params)
    end
  end
end
