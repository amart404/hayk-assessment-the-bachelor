def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |array|
    if array["status"] == "Winner"
      return array["name"].split(" ")[0]
    end
  end  
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array|
    array.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, array|
    array.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  average_age = 0
  contestants = 0
  data[season].each do |array|
      age = array["age"].to_i
      total_age = total_age + age
      contestants += 1
    end
  end
  average_age = total_age / contestants
  return average_age
end
