require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |num, info|
    if num == season
      data[num].each do |x|
        if x["status"] == "Winner"
          return x["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |num, info|
    data[num].each do |x|
      if x["occupation"] == occupation
        return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |num, info|
    data[num].each do |x|
      if x["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |num, info|
    data[num].each do |x|
      if x["hometown"] == hometown
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  average = 0
  data.each do |num, info|
    if num == season
      data[num].each do |x|
        ages << x["age"].to_f
      end
    end
  end
  average = ages.inject{ |sum, el| sum + el }.to_f / ages.size
  average.round
end
