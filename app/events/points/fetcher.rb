module Points
  class Fetcher < BaseEvent
    def call
      points.each { |point_attrs| Points::Create.call(point_attrs) }
    end

    private

    def points
      ExternalPlatform::Points::List.call
    end
  end
end
