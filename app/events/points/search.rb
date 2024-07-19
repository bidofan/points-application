module Points
  class Search < ContractEvent
    def run
      if params[:query]
        PointsQuery.new.by_name(params[:query])
      else
        Point.all
      end
    end

    def contract
      @contract = SearchContract.new.call(params)
    end

    private

    attr_reader :params
  end
end
