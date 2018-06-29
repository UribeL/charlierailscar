class Car
  attr_accessor :make, :model, :speed, :lights, :parking
  def initialize(make, model)
    @speed = 0
    @make = make
    @model = model
    @lights = "Off"
    @parking = "set"
  end

  def accelerate
    if @parking != "set"
      @speed = @speed + 10
    end
  end

  def decelerate
    if @speed > 7
      @speed -= 7
    else
      @speed = 0
    end
  end

  def light_toggle
    if @lights == "Off"
      @lights = "On"
    else
      @lights = "Off"
    end
  end

end
