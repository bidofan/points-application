module Points
  class Create < ContractEvent
    private

    def run
      Point.create(contract.to_h)
    end

    def contract
      @contract ||= Points::Contract.new.call(params)
    end

    # def filler
    #   @filler ||= Points::CreateFiller.new(params).call
    # end
  end
end
