class Museum
  attr_reader :id,
              :name

  def initialize(arguments)
    @name = arguments[:name]
    @id   = arguments[:id]
  end

end
