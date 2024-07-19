# frozen_string_literal: true

class ContractEvent < BaseEvent
  attr_reader :params

  def initialize(params)
    @params = params.dup.to_h
  end

  # 1. Validate contract (passed parameters from controller)
  # 2. Add additional data to parameters
  def call
    return contract if contract.failure?
    # mapper if mapper

    run
  end

  private

  def run
    raise NotImplementedError
  end

  def contract
    raise NotImplementedError
  end

  # def filler; end
end
