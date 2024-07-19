class PointSerializer < ActiveModel::Serializer
  attributes :id, :name, :region, :latitude, :longitude
end
