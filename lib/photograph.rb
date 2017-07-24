class Photograph

  def initialize(data = {})
    @data = data
  end

  def id
    @data[:id]
  end

  def name
    @data[:name]
  end

  def artist_id
    @data[:artist_id]
  end

  def museum_id
    @data[:museum_id]
  end

  def year
    @data[:year]
  end

end
