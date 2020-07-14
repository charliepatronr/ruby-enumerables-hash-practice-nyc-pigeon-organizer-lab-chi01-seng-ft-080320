require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}





def nyc_pigeon_organizer(data)

  result = data.each_with_object({}) do |(outer_key, outer_value), final_hash|
    outer_value.each do |key, value|
      value.each do |inner_key|
        if (!final_hash[inner_key])
            final_hash[inner_key] = {}
          end 
          if(!final_hash[inner_key][outer_key])
            final_hash[inner_key][outer_key] = [key.to_s]
          end 
      end 

    end 

  end 
 pp result 
end


nyc_pigeon_organizer(pigeon_data)