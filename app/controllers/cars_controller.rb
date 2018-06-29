

class CarsController < ApplicationController
  def create
  end

  def new
    current_car = Car.new(params[:make], params[:model_year])
    cookies[:car] = current_car.to_yaml
    redirect_to '/status'
  end

  def status
    @car = YAML.load(cookies[:car])
  end

  def accelerate
    car = YAML.load(cookies[:car])
    car.accelerate
    cookies[:car] = car.to_yaml
    redirect_to '/status'
  end

  def decelerate
    car = YAML.load(cookies[:car])
    car.decelerate
    cookies[:car] = car.to_yaml
    redirect_to '/status'
  end

  def light_toggle
    car = YAML.load(cookies[:car])
    car.light_toggle
    cookies[:car] = car.to_yaml
    redirect_to '/status'
  end

  def parking_toggle
    car = YAML.load(cookies[:car])
    car.parking_toggle
    cookies[:car] = car.to_yaml
    redirect_to '/status'
  end



end
