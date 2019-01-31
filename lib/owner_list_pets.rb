class Owner

  def list_pets
    make_sentence(self.pets)
  end

  private

  def make_sentence(pets_hash)
    strings = pets_hash.map{|type, pets| format_pet_num(type, pets)}
    "I have " + strings[0..-2].join(", ") + ", and " + strings.last + "."
  end

  def format_pet_num(type,  pets)
    if type == :fishes
      "#{pets.count} #{type.to_s}".chomp("es")
    else
      "#{pets.count} #{type.to_s}".chomp("s") + "(s)"
    end
  end

end
