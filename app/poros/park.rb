class Park 
  attr_reader :name, :description, :directions, :hours_of_operation

  def initialize(attributes)
    @name = attributes[:fullName] 
    @description = attributes[:description]
    @directions = attributes[:directionsInfo]
    @hours_of_operation = attributes[:operatingHours][:standardHours]
  end
end