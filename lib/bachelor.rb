def get_first_name_of_season_winner(data, season)
  data.each do | key, value |
    season.each do | first_name, stat |
      if value["status"] == "Winner"
        return value["name"].first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | key, value |
    if value["occupation"] == occupation
      return value["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do | key, value |
    if value["hometown"] == hometown
      count = hometown 
    end
  end
end

def get_occupation(data, hometown)
  data.each do | key, value |
    if value["hometown"] == hometown
      return value["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  average = data.sum {| x | x(season) } / array.size
    return average
  end
end
