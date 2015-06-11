class DashboardController < ApplicationController


def power
  @you = User.find_by(current_user.id)

  a = User.all
  b = a.sort_by &:pow_points
  @users = b.reverse.first(4)

  a = Slope.all
  b = a.sort_by &:pow_points
  @slope = b.reverse.first(4)

  #implement amateur only top 4 next
end


def powerup
  #load user info
  @you = User.find_by(current_user.id)

  #where you are
  #hard coded in from javascript page
  long = 42.049
  lat = -87.687

  #where the snow is & how much snow
  #dummy numbers at this moment
  long_actual = 42
  lat_actual = 87
  snow = 12.5

  #Are you close enough to get the points
  #points algorithm calculation
  dist = (long-long_actual)**2 + (lat-lat_actual)**2

  ppoints = (dist**(0.5)).to_i
  if ppoints < 1
    ppoints = snow.to_i
    @you.pow_points = @you.pow_points + ppoints
    @you.save
    redirect_to "/dashboard/power", :notice => "BOOM - PA PA POWIN IT UP!!"
  else
    redirect_to "/dashboard/power", :notice => "Sorry buddy - not close enough.."
  end
end

end
