class TeamsController < ApplicationController

  
  def league
    @teams = Team.all
  end

  def eastern_conf
    @eastern = Team.where(conference: "Eastern")
    @eastern_win = @eastern.sort_by { |team| team[:wins] }
    @eastern_win.reverse
  end

  def western_conf
    @western = Team.where(conference: "Western")
  end
end
