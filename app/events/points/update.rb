module Points
  class Update < ContractEvent
    def initialize(point, params)
      super(params)

      @point = point
    end

    private

    attr_reader :point

    def run
      point.update(contract.to_h)
    end

    def contract
      @contract = Points::UpdateContract.new(point: point).call(params)
    end
  end
end
