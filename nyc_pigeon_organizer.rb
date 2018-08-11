require "pry"

def nyc_pigeon_organizer(data)
  newHash = {}

  colors = data.fetch(:color)
  colors.each do |color, pigeons|
    pigeons.each do |pigeon|
      newHash[pigeon] = {}
    end
  end
  newHash
  keys = newHash.keys

  data.each do |attribute, choices|
    choices.each do |option, names|
      names.each do |name|
        i = 0
        while i < keys.length
          if name == keys[i]
            newHash[name][attribute] = []
            option = option.to_s
            newHash[name][attribute] << option
            i += 1
          else
            i += 1
          end
        end
      end
    end
  end
  newHash

  colors.each do |color, pigeons|
    pigeons.each do |pigeon|
      color = color.to_s
      if newHash[pigeon][:color].include?(color) == false
        newHash[pigeon][:color] << color
      end
    end
  end
  newHash
end
