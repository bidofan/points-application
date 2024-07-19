class PointsQuery
  def by_name(query)
    Point.where("name LIKE '%#{ApplicationRecord.sanitize_sql_like(query)}%'")
  end
end
