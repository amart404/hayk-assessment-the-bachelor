def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end  
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant|
    contestant.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  # code here
  average_age = data[season].map do |contestant|
    contestant["age"].to_i
  end.reduce(:+).to_f / data[season].length
  average_age.round
end
