class Car
  attr_accessor :make, :model, :speed
  def initialize(make, model)
    @speed = 0
    @make= make
    @model = model
    @lights = false
  end

  def accelerate
    @speed = @speed + 10
  end

  def decelerate
    if @speed > 7
      @speed -= 7
    else
      @speed = 0
    end
  end
end
