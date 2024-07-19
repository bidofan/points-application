# frozen_string_literal: true

module API
  class PointsController < ApplicationController
    def index
      points = Points::Search.call(params.permit!)

      api_render(points)
    end

    def show
      api_render(point)
    end

    def create
      api_render(Points::Create.call(params.permit!))
    end

    def update
      api_render(Points::Update.call(point, params.permit!))
    end

    def destroy
      Points::Destroy.call(point)

      head :no_content
    end

    private

    def point
      @point ||= Point.find(params[:id])
    end
  end
end
