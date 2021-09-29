require_relative 'api'

module Etherscan
  class GasTracker < Etherscan::Api
    def gasoracle()
      params = {
        module: 'gastracker', action: 'gasoracle'
      }
      get(params)
    end
  end
end
