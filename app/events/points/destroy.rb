module Points
  class Destroy < BaseEvent
    def initialize(point)
      @point = point
    end

    def call
      point.destroy
    end

    private

    attr_reader :point
  end
end
