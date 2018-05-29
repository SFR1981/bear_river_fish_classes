class River

attr_reader(:name)


def initialize(name)

  @name = name
  @fish_collection = []

end

def return_fish
  @fish_collection
end

def add_fish(name)
  @fish_collection << name

end

def lose_fish()

  @fish_collection.pop()
  @fish_collection

end



end
